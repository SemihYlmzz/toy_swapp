import 'dart:async';

import 'package:consumer_repository/consumer_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:toy_swapp_client/toy_swapp_client.dart';
import '../../errors/errors.dart';

part 'navigator_bar_bloc.freezed.dart';
part 'navigator_bar_event.dart';
part 'navigator_bar_state.dart';

class NavigatorBarBloc extends Bloc<NavigatorBarEvent, NavigatorBarState> {
  NavigatorBarBloc({
    required ConsumerRepository consumerRepository,
  }) : super(
          NavigatorBarState(
            currentConsumer: consumerRepository.currentConsumer!,
          ),
        ) {
    on<NavigatorBarEvent>(_onNavigatorBarEvent);

    _currentConsumerSubscription =
        consumerRepository.currentConsumerStream.listen((event) {
      if (event == null) {
        return;
      }
      add(NavigatorBarEvent.currentConsumerUpdated(event));
    });
  }
  // Stream Subscriptions
  StreamSubscription<Consumer?>? _currentConsumerSubscription;

  // Cancel Subscriptions
  @override
  Future<void> close() {
    _currentConsumerSubscription?.cancel();
    return super.close();
  }

  // Events
  Future<void> _onNavigatorBarEvent(
    NavigatorBarEvent event,
    Emitter<NavigatorBarState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));

    await event.map(
      currentConsumerUpdated: (e) async {
        emit(state.copyWith(currentConsumer: e.updatedConsumer));
      },
    );

    emit(state.copyWith(isLoading: false, failure: null));
  }
}
