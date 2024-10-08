part of 'sign_in_bloc.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState({
    @Default(false) bool isLoading,
    Failure? failure,
  }) = _SignInState;
}
