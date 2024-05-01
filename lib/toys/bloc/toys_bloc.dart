import 'package:auth_repository/auth_repository.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:consumer_repository/consumer_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stream_transform/stream_transform.dart';
import 'package:toy_repository/toy_repository.dart';
import 'package:toy_swapp/toys/models/models.dart';

import '../../errors/errors.dart';
import '../toys.dart';

part 'toys_bloc.freezed.dart';
part 'toys_event.dart';
part 'toys_state.dart';

const duration = Duration(seconds: 2);

EventTransformer<E> throttleDroppable<E>(Duration duration) {
  return (events, mapper) {
    return droppable<E>().call(events.throttle(duration), mapper);
  };
}

class ToysBloc extends Bloc<ToysEvent, ToysState> {
  ToysBloc({
    required AuthRepository authRepository,
    required ConsumerRepository consumerRepository,
    required ToyRepository toyRepository,
  })  : _toyRepository = toyRepository,
        _consumerRepository = consumerRepository,
        super(ToysState(currentAuth: authRepository.currentAuth)) {
    // Trigger Events
    on<ToysEvent>(
      _onToysEvent,
      transformer: throttleDroppable(duration),
    );
  }

  // Repositories
  final ToyRepository _toyRepository;
  final ConsumerRepository _consumerRepository;

  // Events
  Future<void> _onToysEvent(
    ToysEvent event,
    Emitter<ToysState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    await event.map(
      clearFetchMoreFailure: (value) async {
        emit(state.copyWith(fetchMoreFailure: null));
      },
      fetchLikeableToys: (value) async {
        if(value.clearBeforeFetch){
          emit(state.copyWith(toys: [],hasReachedMax: false));
        }

        // If reached max, do not fetch
        if (state.hasReachedMax) return;
        // Get the oldest toy
        final oldestToy = state.toys.firstOrNull?.toy;

        // If there is no toy,
        if (oldestToy == null) {
          // set it is initializing
          emit(state.copyWith(isInitializing: true));
        }
        // No failure while fetching
        emit(state.copyWith(initializingFailure: null, fetchMoreFailure: null));

        // Fetch 10 likeable toys
        final tryFetch = await _toyRepository.fetch10LikeableToysLatest(
          // If oldest toy is null, fetch latest
          // If not, fetch before this toy
          beforeThisToy: oldestToy,
          // Do not fetch owned toys
          currentAuthId: state.currentAuth.id,

        );
        var newToys = <Toy>[];
        tryFetch.fold(
          (failure) {
            if (oldestToy == null) {
              emit(state.copyWith(isInitializing: false));
            } else {
              emit(state.copyWith(fetchMoreFailure: failure));
            }
          },
          (fetchedToys) => newToys = fetchedToys,
        );

        if (state.initializingFailure != null ||
            state.fetchMoreFailure != null) {
          return;
        }
        // If there is no failure,
        // less than 10 toys are fetched means there are no more toys to fetch
        if (newToys.length < 10) {
          emit(state.copyWith(hasReachedMax: true));
        }
        // Get the owners of the toys
        final fetchedToysAndOwners = await _toysToToyAndOwnerConsumers(newToys);
        // Add old toys
        fetchedToysAndOwners.addAll(state.toys);
        emit(
          state.copyWith(
            toys: fetchedToysAndOwners,
            isInitializing: false,
          ),
        );
      },
    );
    emit(state.copyWith(isLoading: false, failure: null));
  }

  // Toys Specific Functions
  Future<List<ToyAndOwnerConsumer>> _toysToToyAndOwnerConsumers(
    List<Toy> toys,
  ) async {
    final givenToysAndOwners = <ToyAndOwnerConsumer>[];
    for (final toy in toys) {
      // Try Read Owner
      final tryRead = await _consumerRepository.readConsumer(
        authId: toy.ownerAuthId,
      );
      await tryRead.fold(
        // If Owner is not found, skip this toy
        (l) => null,
        // If Owner is found, add to list
        (toyOwnerConsumer) async {
          givenToysAndOwners.add(
            ToyAndOwnerConsumer(
              toy: toy,
              ownerConsumer: toyOwnerConsumer,
            ),
          );
        },
      );
    }
    return givenToysAndOwners;
  }
}
