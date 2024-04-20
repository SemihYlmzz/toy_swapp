part of 'account_settings_bloc.dart';

@freezed
sealed class AccountSettingsEvent with _$AccountSettingsEvent {
  const factory AccountSettingsEvent.currentConsumerUpdated(
    Consumer updatedConsumer,
  ) = AccountSettingsCurrentConsumerUpdated;
  const factory AccountSettingsEvent.updateAvatarImage({
    required AvatarImages newAvatarImages,
    required Password currentPassword,
  }) = AccountSettingsUpdateAvatarImage;
  const factory AccountSettingsEvent.updateFullName({
    required FirstName firstNameObject,
    required LastName lastNameObject,
    required Password currentPassword,
  }) = AccountSettingsUpdateFullName;
  const factory AccountSettingsEvent.updateEmail({
    required Email emailObject,
    required Password currentPassword,
  }) = AccountSettingsUpdateEmail;
}
