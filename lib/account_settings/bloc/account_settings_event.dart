part of 'account_settings_bloc.dart';

@freezed
sealed class AccountSettingsEvent with _$AccountSettingsEvent {
  const factory AccountSettingsEvent.fetch() = AccountSettingsFetch;
}
