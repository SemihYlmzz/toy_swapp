import 'dart:async';

import 'package:consumer_repository/consumer_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../errors/errors.dart';

part 'toy_detail_bloc.freezed.dart';
part 'toy_detail_event.dart';
part 'toy_detail_state.dart';

class ToyDetailBloc extends Bloc<ToyDetailEvent, ToyDetailState> {
  ToyDetailBloc({
    required ConsumerRepository consumerRepository,
  })  : _consumerRepository = consumerRepository,
        super(
          ToyDetailState(currentConsumer: consumerRepository.currentConsumer),
        ) {
    on<ToyDetailEvent>(_onToyDetailEvent);

    _currentConsumerSubscription =
        consumerRepository.currentConsumerStream.listen((value) {
      add(ToyDetailEvent.currentConsumerUpdated(value));
    });
  }
  // Repositories
  final ConsumerRepository _consumerRepository;
  // Stream Subscriptions
  StreamSubscription<Consumer>? _currentConsumerSubscription;

  // Events
  Future<void> _onToyDetailEvent(
    ToyDetailEvent event,
    Emitter<ToyDetailState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));

    await event.map(
      currentConsumerUpdated: (e) async {
        emit(state.copyWith(currentConsumer: e.updatedConsumer));
      },
      loadToyOwnerConsumerData: (e) async {
        final tryRead = await _consumerRepository.readConsumer(
          authId: e.toyOwnerAuthId,
        );
        tryRead.fold(
          (failure) => emit(state.copyWith(failure: failure)),
          (toyOwnerConsumer) => emit(
            state.copyWith(toyOwnerConsumer: toyOwnerConsumer),
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
