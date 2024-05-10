import 'dart:async';

import 'package:auth_repository/auth_repository.dart';
import 'package:consumer_repository/consumer_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../errors/errors.dart';

part 'consumer_data_calibration_bloc.freezed.dart';
part 'consumer_data_calibration_event.dart';
part 'consumer_data_calibration_state.dart';

class ConsumerDataCalibrationBloc
    extends Bloc<ConsumerDataCalibrationEvent, ConsumerDataCalibrationState> {
  ConsumerDataCalibrationBloc({
    required AuthRepository authRepository,
    required ConsumerRepository consumerRepository,
  })  : _consumerRepository = consumerRepository,
        super(
          ConsumerDataCalibrationState(currentAuth: authRepository.currentAuth),
        ) {
    on<ConsumerDataCalibrationEvent>(_onConsumerDataCalibrationEvent);

    _currentAuthSubscription = authRepository.currentAuthStream.listen((auth) {
      add(ConsumerDataCalibrationEvent.currentAuthUpdated(auth));
    });
  }
  // Repositories
  final ConsumerRepository _consumerRepository;

  // Subscriptions
  StreamSubscription<Auth>? _currentAuthSubscription;

  // Events
  Future<void> _onConsumerDataCalibrationEvent(
    ConsumerDataCalibrationEvent event,
    Emitter<ConsumerDataCalibrationState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));

    await event.map(
      currentAuthUpdated: (e) {
        emit(state.copyWith(currentAuth: e.updatedAuth));
      },
      updateConsumerEmail: (e) async {
        final currentAuthEmail = state.currentAuth.email;
        if (currentAuthEmail == null || currentAuthEmail.isEmpty) {
          return;
        }

        final tryUpdate = await _consumerRepository.updateEmail(
          newEmail: currentAuthEmail,
        );
        tryUpdate.fold(
          (failure) => emit(state.copyWith(updateEmailFailure: failure)),
          (success) => emit(
            state.copyWith(successUpdatedConsumerEmail: currentAuthEmail),
          ),
        );
      },
    );

    emit(state.copyWith(isLoading: false, failure: null));
  }

  // Clear Subscriptions
  @override
  Future<void> close() {
    _currentAuthSubscription?.cancel();
    return super.close();
  }
}
