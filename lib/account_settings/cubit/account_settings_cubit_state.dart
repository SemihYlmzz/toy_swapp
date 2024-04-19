part of 'account_settings_cubit.dart';

@freezed
class AccountSettingsCubitState with _$AccountSettingsCubitState {
  const factory AccountSettingsCubitState({
    required FocusNode lastNameFocusNode,
    @Default(AccountSettingsViewState.navigation)
    AccountSettingsViewState currentViewState,
    @Default(Password.pure()) Password currentPassword,
    @Default(FirstName.pure()) FirstName firstNameObject,
    @Default(LastName.pure()) LastName lastNameObject,
    AvatarImages? newAvatarImages,
    @Default(false) bool isLoading,
    Failure? failure,
  }) = _AccountSettingsCubitState;
}
