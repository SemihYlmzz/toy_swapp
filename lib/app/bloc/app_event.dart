part of 'app_bloc.dart';

@freezed
sealed class AppEvent with _$AppEvent {
  factory AppEvent.currentDevicePreferencesUpdated(
    CurrentUserPreferences updatedCurrentUserPreferences,
  ) = AppCurrentDevicePreferencesUpdated;
}
