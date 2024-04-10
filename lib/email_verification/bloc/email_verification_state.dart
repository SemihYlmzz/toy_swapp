part of 'email_verification_bloc.dart';

@freezed
class EmailVerificationState with _$EmailVerificationState {
   const factory EmailVerificationState({
    required Auth authState,
    @Default(false) bool isLoading,
    DateTime? emailSendedDate,
    DateTime? verificationLastCheckedDate,
    Failure? failure,
  }) = _EmailVerificationState;
}
