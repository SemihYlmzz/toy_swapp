part of 'email_verification_bloc.dart';

@freezed
class EmailVerificationState with _$EmailVerificationState {
   const factory EmailVerificationState({
    @Default(false) bool isLoading,
    Failure? failure,
  }) = _EmailVerificationState;
}
