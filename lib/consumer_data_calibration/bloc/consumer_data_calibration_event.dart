part of 'consumer_data_calibration_bloc.dart';

@freezed
sealed class ConsumerDataCalibrationEvent with _$ConsumerDataCalibrationEvent {
  const factory ConsumerDataCalibrationEvent.updateConsumerEmail() =
      ConsumerDataCalibrationUpdateConsumerEmail;

  const factory ConsumerDataCalibrationEvent.currentAuthUpdated(
    Auth updatedAuth,
  ) = ConsumerDataCalibrationCurrentAuthUpdated;
}
