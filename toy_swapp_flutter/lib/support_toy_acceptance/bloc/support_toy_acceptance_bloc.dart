import 'dart:async';

import 'package:auth_repository/auth_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:toy_repository/toy_repository.dart';
import 'package:toy_swapp_client/toy_swapp_client.dart';
import '../../errors/errors.dart';

part 'support_toy_acceptance_bloc.freezed.dart';
part 'support_toy_acceptance_event.dart';
part 'support_toy_acceptance_state.dart';

class SupportToyAcceptanceBloc
    extends Bloc<SupportToyAcceptanceEvent, SupportToyAcceptanceState> {
  SupportToyAcceptanceBloc({
    required AuthRepository authRepository,
    required ToyRepository toyRepository,
  })  : _toyRepository = toyRepository,
        super(
          SupportToyAcceptanceState(authID: authRepository.currentAuth.id),
        ) {
    on<SupportToyAcceptanceEvent>(_onSupportToyAcceptanceEvent);
  }
  // Repositories
  final ToyRepository _toyRepository;

  // Events
  Future<void> _onSupportToyAcceptanceEvent(
    SupportToyAcceptanceEvent event,
    Emitter<SupportToyAcceptanceState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));

    await event.map(
      acceptToy: (value) async {
        final tryAccept = await _toyRepository.acceptToy(
          value.toy,
          state.authID,
        );
        tryAccept.fold(
          (l) => emit(state.copyWith(failure: l)),
          (r) {
            final acceptedToyRemovedToys =
                List<ToyAndOwnerConsumer>.from(state.acceptableToys)
                  ..removeWhere((item) => item.toy.id! == value.toy.id!);
            emit(state.copyWith(acceptableToys: acceptedToyRemovedToys));
          },
        );
      },
      declineToy: (e) async {
        final tryAccept = await _toyRepository.declineToy(
          e.toy,
          e.reason,
          state.authID,
        );
        tryAccept.fold(
          (l) => emit(state.copyWith(failure: l)),
          (r) {
            final acceptedToyRemovedToys =
                List<ToyAndOwnerConsumer>.from(state.acceptableToys)
                  ..removeWhere((item) => item.toy.id! == e.toy.id!);
            emit(state.copyWith(acceptableToys: acceptedToyRemovedToys));
          },
        );
      },
      fetchAcceptableToys: (value) async {
        if (value.isRefresh && !state.hasReachedMax) return;

        // No failure while fetching
        emit(
          state.copyWith(
            fetchFailure: null,
            isFetching: true,
            hasReachedMax: false,
          ),
        );
        // Fetch 10 likeable toys
        final tryFetch = await _toyRepository.fetchMoreAcceptableToys(
          fetchedAcceptableToysLength: state.acceptableToys.length,
        );
        tryFetch.fold(
          (failure) => emit(state.copyWith(fetchFailure: failure)),
          (fetchedToys) {
            final newFetchToys = [
              ...state.acceptableToys,
              ...fetchedToys,
            ];
            emit(
              state.copyWith(
                hasReachedMax: fetchedToys.length < 10,
                acceptableToys: newFetchToys,
              ),
            );
          },
        );
      },
    );

    emit(state.copyWith(isLoading: false, failure: null, isFetching: false));
  }
}
