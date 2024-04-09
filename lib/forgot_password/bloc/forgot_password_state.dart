part of 'forgot_password_bloc.dart';

@freezed
class ForgotPasswordState with _$ForgotPasswordState {
   const factory ForgotPasswordState({
    @Default(false) bool isLoading,
    @Default(false) bool isResetPasswordSend,
    Failure? failure,
  }) = _ForgotPasswordState;
}
