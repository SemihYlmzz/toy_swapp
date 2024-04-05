part of 'sign_in_bloc.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState({
    required FocusNode passwordFocusNode,
    @Default(false) bool isLoading,
    @Default(null) String? errorMessage,
    @Default('') String email,
    @Default('') String password,
  }) = _SignInState;
}
