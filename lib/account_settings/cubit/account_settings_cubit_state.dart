part of 'account_settings_cubit.dart';

@freezed
class AccountSettingsCubitState with _$AccountSettingsCubitState {
  const factory AccountSettingsCubitState({
    @Default(AccountSettingsViewState.navigation)
    AccountSettingsViewState currentViewState,
  }) = _AccountSettingsCubitState;
}
