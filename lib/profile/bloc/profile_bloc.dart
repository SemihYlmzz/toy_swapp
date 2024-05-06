import 'dart:async';

import 'package:auth_repository/auth_repository.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stream_transform/stream_transform.dart';
import 'package:toy_repository/toy_repository.dart';
import 'package:toy_swapp_client/toy_swapp_client.dart';
import '../../errors/errors.dart';

part 'profile_bloc.freezed.dart';
part 'profile_event.dart';
part 'profile_state.dart';

const duration = Duration(seconds: 2);

EventTransformer<E> throttleDroppable<E>(Duration duration) {
  return (events, mapper) {
    return droppable<E>().call(events.throttle(duration), mapper);
  };
}

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc({
    required AuthRepository authRepository,
    required ToyRepository toyRepository,
  })  : _toyRepository = toyRepository,
        super(
          ProfileState(
            currentAuthId: authRepository.currentAuth.id,
            ownedToys: toyRepository.ownedToys,
          ),
        ) {
    on<ProfileOwnedToysUpdated>(
      _onProfileEvent,
    );
    on<ProfileOpenToyToPublic>(
      _onProfileEvent,
    );
    on<ProfileCloseToyToPublic>(
      _onProfileEvent,
    );
    on<ProfileEvent>(
      _onProfileEvent,
      transformer: throttleDroppable(duration),
    );
    _ownedToysSubscription = _toyRepository.ownedToysStream.listen(
      (ownedToys) => add(ProfileEvent.ownedToysUpdated(ownedToys)),
    );
  }
  // Repositories
  final ToyRepository _toyRepository;

  // Subscriptions
  StreamSubscription<List<Toy>>? _ownedToysSubscription;

  // Events
  Future<void> _onProfileEvent(
    ProfileEvent event,
    Emitter<ProfileState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));

    await event.map(
      openToyToPublic: (e) async {
        final tryUpdate = await _toyRepository.openToPublic(toyID: e.toyID);
        tryUpdate.fold(
          (l) => emit(state.copyWith(failure: l)),
          (r) => null,
        );
      },
      closeToyToPublic: (e) async {
        final tryUpdate = await _toyRepository.closeToPublic(toyID: e.toyID);
        tryUpdate.fold(
          (l) => emit(state.copyWith(failure: l)),
          (r) => null,
        );
      },
      ownedToysUpdated: (e) async {
        emit(state.copyWith(ownedToys: e.updatedOwnedToys));
      },
      fetchOwnedToys: (e) async {
        emit(
          state.copyWith(
            hasReachedMax: false,
            isInitializing: true,
            isLoading: false,
            fetchLatestToysFailure: null,
          ),
        );
        final tryFetch = await _toyRepository.fetchLastest12Owned(
          ownerAuthId: state.currentAuthId,
        );
        tryFetch.fold(
          (l) => emit(state.copyWith(fetchLatestToysFailure: l)),
          (fetchedToysList) {
            if (fetchedToysList.length < 12) {
              emit(state.copyWith(hasReachedMax: true));
            }
            emit(state.copyWith(ownedToys: fetchedToysList));
          },
        );
      },
      fetchMoreOwnedToys: (e) async {
        emit(state.copyWith(fetchMoreFailure: null));
        if (state.hasReachedMax) return;

        final ownedToys = state.ownedToys;
        if (ownedToys == null) return;
        if (ownedToys.isEmpty) return;
        final tryFetch = await _toyRepository.fetch12BeforeOldestOwnedToy(
          ownerAuthId: state.currentAuthId,
          oldestOwnedToy: ownedToys.first,
        );

        tryFetch.fold(
          (l) => emit(state.copyWith(fetchMoreFailure: l)),
          (newOwnedToys) {
            if (newOwnedToys.isEmpty || newOwnedToys.length < 12) {
              emit(state.copyWith(hasReachedMax: true));
            }
          },
        );
      },
    );

    emit(
      state.copyWith(isLoading: false, failure: null, isInitializing: false),
    );
  }

  @override
  Future<void> close() {
    _ownedToysSubscription?.cancel();
    return super.close();
  }
}
