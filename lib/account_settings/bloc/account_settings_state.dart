part of 'account_settings_bloc.dart';

@freezed
class AccountSettingsState with _$AccountSettingsState {
   const factory AccountSettingsState({
    @Default(false) bool isLoading,
    Failure? failure,
  }) = _AccountSettingsState;
}
