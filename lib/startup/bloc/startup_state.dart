part of 'startup_bloc.dart';

@freezed
class StartupState with _$StartupState {
  const factory StartupState({
    @Default(0.0) double progressValue,
    AppDependencies? appDependencies,
    @Default(false) bool isInitializeError,
  }) = _StartupState;
}
