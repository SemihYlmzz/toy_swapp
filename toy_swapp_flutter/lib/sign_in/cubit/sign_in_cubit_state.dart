part of 'sign_in_cubit.dart';

@freezed
class SignInCubitState with _$SignInCubitState {
  const factory SignInCubitState({
    required FocusNode passwordFocusNode,
    @Default(Email.pure()) Email email,
    @Default(Password.pure()) Password password,
    @Default(false) bool displayErrors,
  }) = _SignInCubitState;
}
