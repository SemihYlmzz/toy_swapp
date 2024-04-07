part of 'email_verification_bloc.dart';

@freezed
sealed class EmailVerificationEvent with _$EmailVerificationEvent {
  const factory EmailVerificationEvent.fetch() = EmailVerificationFetch;
}
