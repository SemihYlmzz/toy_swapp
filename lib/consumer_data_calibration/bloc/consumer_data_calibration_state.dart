part of 'consumer_data_calibration_bloc.dart';

@freezed
class ConsumerDataCalibrationState with _$ConsumerDataCalibrationState {
  const factory ConsumerDataCalibrationState({
    required Auth currentAuth,
    @Default(false) bool isLoading,
    String? successUpdatedConsumerEmail,
    Failure? updateEmailFailure,
    Failure? failure,
  }) = _ConsumerDataCalibrationState;
}
