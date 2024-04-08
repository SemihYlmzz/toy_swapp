part of 'email_verification_bloc.dart';

@freezed
sealed class EmailVerificationEvent with _$EmailVerificationEvent {
  const factory EmailVerificationEvent.sendVerificationEmail() =
      EmailVerificationSendVerificationEmail;
  const factory EmailVerificationEvent.signOut() = EmailVerificationSignOut;
  const factory EmailVerificationEvent.reloadAuthState() =
      EmailVerificationReloadAuthState;
}
