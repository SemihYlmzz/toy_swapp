import 'dart:async';

import 'package:consumer_repository/consumer_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:toy_repository/toy_repository.dart';
import 'package:toy_swapp_client/toy_swapp_client.dart';
import '../../errors/errors.dart';

part 'toy_detail_bloc.freezed.dart';
part 'toy_detail_event.dart';
part 'toy_detail_state.dart';

class ToyDetailBloc extends Bloc<ToyDetailEvent, ToyDetailState> {
  ToyDetailBloc({
    required ConsumerRepository consumerRepository,
    required ToyRepository toyRepository,
  })  : _consumerRepository = consumerRepository,
        _toyRepository = toyRepository,
        super(
          ToyDetailState(
            currentConsumer: consumerRepository.currentConsumer,
          ),
        ) {
    on<ToyDetailEvent>(_onToyDetailEvent);
    // Listen Current Consumer Changes
    _currentConsumerSubscription =
        consumerRepository.currentConsumerStream.listen((value) {
      add(ToyDetailEvent.currentConsumerUpdated(value));
    });
  }
  // Repositories
  final ConsumerRepository _consumerRepository;
  final ToyRepository _toyRepository;

  // Stream Subscriptions
  StreamSubscription<Consumer?>? _currentConsumerSubscription;

  // Events
  Future<void> _onToyDetailEvent(
    ToyDetailEvent event,
    Emitter<ToyDetailState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));

    await event.map(
      deleteOwnedToy: (event) async {
        final tryDelete = await _toyRepository.deleteToy(
          toyID: event.toyID,
          currentConsumerID: state.currentConsumer!.id!,
        );
        tryDelete.fold(
          (failure) => emit(state.copyWith(failure: failure)),
          (updatedConsumer) {
            _consumerRepository.sinkCurrentConsumer(updatedConsumer);
            emit(state.copyWith(isToyDeleted: true));
          },
        );
      },
      currentConsumerUpdated: (e) async {
        emit(state.copyWith(currentConsumer: e.updatedConsumer));
      },
      loadToyAndOwner: (e) async {
        final tryRead = await _toyRepository.readToy(
          toyID: e.toyID,
        );
        final fetchedToy = tryRead.getRight().toNullable();
        if (fetchedToy == null) {
          emit(state.copyWith(failure: tryRead.getLeft().toNullable()));
          return;
        }
        if (fetchedToy.ownerConsumerID == state.currentConsumer?.id) {
          emit(
            state.copyWith(
              toy: fetchedToy,
              ownerConsumer: state.currentConsumer,
            ),
          );
          return;
        }
        final tryReadOwnerConsumer = await _consumerRepository.readConsumer(
          consumerID: fetchedToy.ownerConsumerID,
        );
        tryReadOwnerConsumer.fold(
          (failure) => emit(state.copyWith(failure: failure, toy: fetchedToy)),
          (ownerConsumer) => emit(
            state.copyWith(ownerConsumer: ownerConsumer, toy: fetchedToy),
          ),
        );
      },
    );

    emit(state.copyWith(isLoading: false, failure: null));
  }

  // Stop Stream Subscriptions
  @override
  Future<void> close() {
    _currentConsumerSubscription?.cancel();
    return super.close();
  }
}
