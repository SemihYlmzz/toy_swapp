part of 'forgot_password_cubit.dart';

@freezed
class ForgotPasswordCubitState with _$ForgotPasswordCubitState {
  const factory ForgotPasswordCubitState({
    @Default(Email.pure()) Email email,
    @Default(false) bool displayErrors,
  }) = _ForgotPasswordCubitState;
}
