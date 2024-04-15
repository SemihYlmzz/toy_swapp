part of 'settings_bloc.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState({
    required AppMetadata appMetadata,
    required AppPreferences appPreferences,
    required Consumer currentConsumer,
    required Auth currentAuth,
    @Default(false) bool isSignOutCompleted,
    @Default(false) bool isLoading,
    Failure? failure,
  }) = _SettingsState;
}
