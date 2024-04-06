part of 'app_bloc.dart';

@freezed
sealed class AppEvent with _$AppEvent {
  factory AppEvent.appPreferencesUpdated(
    AppPreferences updatedAppPreferences,
  ) = AppPreferencesUpdated;

  factory AppEvent.appMetadataUpdated(
    AppMetadata updatedAppMetadata,
  ) = AppMetadataUpdated;
}
