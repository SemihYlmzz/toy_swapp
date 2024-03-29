part of 'example_settings_bloc.dart';

@freezed
class ExampleSettingsState with _$ExampleSettingsState {
   const factory ExampleSettingsState({
    @Default(false) bool isLoading,
    @Default(null) String? errorMessage,
  }) = _ExampleSettingsState;
}
