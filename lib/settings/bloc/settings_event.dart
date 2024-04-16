part of 'settings_bloc.dart';

@freezed
sealed class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.authSignOut() = SettingsAuthSignOut;
  const factory SettingsEvent.currentConsumerUpdated(
    Consumer updatedConsumer,
  ) = SettingsCurrentConsumerUpdated;
  const factory SettingsEvent.currentAuthUpdated(
    Auth updatedAuth,
  ) = SettingsCurrentAuthUpdated;
  const factory SettingsEvent.appMetadataUpdated(
    AppMetadata updatedAppMetadata,
  ) = SettingsAppMetadataUpdated;
  const factory SettingsEvent.appPreferencesUpdated(
    AppPreferences updatedAppPreferences,
  ) = SettingsAppPreferencesUpdated;
  const factory SettingsEvent.updateIsVibratable({
    required bool updatedIsVibratable,
  }) = SettingsUpdateIsVibratable;
  const factory SettingsEvent.updateThemeMode({
    required ThemeMode updatedThemeMode,
  }) = SettingsUpdateThemeMode;
}
