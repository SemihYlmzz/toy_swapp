part of 'sign_up_cubit.dart';

@freezed
class SignUpCubitState with _$SignUpCubitState {
  const factory SignUpCubitState({
    @Default(Email.pure()) Email email,
    @Default(Password.pure()) Password password,
    @Default(ConfirmedPassword.pure()) ConfirmedPassword confirmedPassword,
    @Default(false) bool displayErrors,
  }) = _SignUpCubitState;
}
