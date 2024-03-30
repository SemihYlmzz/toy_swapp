part of 'startup_bloc.dart';

@freezed
class StartupState with _$StartupState {
  const factory StartupState({
    @Default(false) bool isInitializing,
    @Default(false) bool isInitializeError,
    LocalDatabaseApis? localDatabaseApis,
  }) = _StartupState;
}
