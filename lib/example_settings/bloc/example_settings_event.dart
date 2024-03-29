part of 'example_settings_bloc.dart';

@freezed
sealed class ExampleSettingsEvent with _$ExampleSettingsEvent {
  const factory ExampleSettingsEvent.updateAppThemeMode({
    required ThemeMode updatedThemeMode,
  }) = ExampleSettingsUpdateAppThemeMode;

  const factory ExampleSettingsEvent.updateAppLanguage({
    required Language updatedLanguage,
  }) = ExampleSettingsUpdateAppLanguage;

  const factory ExampleSettingsEvent.updateAppIsVibratable({
    required bool updatedIsVibratable,
  }) = ExampleSettingsUpdateAppIsVibratable;
}
