part of 'app_bloc.dart';

@freezed
sealed class AppEvent with _$AppEvent {
  factory AppEvent.initializeCurrentUserPreferences() =
      AppInitializeCurrentUserPreferences;
  factory AppEvent.resetAppPreferences() = AppResetAppPreferences;
  factory AppEvent.currentDevicePreferencesUpdated(
    CurrentUserPreferences updatedCurrentUserPreferences,
  ) = AppCurrentDevicePreferencesUpdated;
}
