part of 'startup_bloc.dart';

@freezed
class StartupState with _$StartupState {
  const factory StartupState({
    AppDependencies? appDependencies,
    @Default(false) bool isInitializeError,
  }) = _StartupState;
}
