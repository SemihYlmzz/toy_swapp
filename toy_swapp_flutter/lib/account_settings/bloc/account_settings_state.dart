part of 'account_settings_bloc.dart';

@freezed
class AccountSettingsState with _$AccountSettingsState {
   const factory AccountSettingsState({
    required Consumer currentConsumer,
    @Default(false) bool isValueUpdated,
    @Default(false) bool isLoading,
    Failure? failure,
  }) = _AccountSettingsState;
}
