part of 'sign_up_bloc.dart';

@freezed
class SignUpState with _$SignUpState {
   const factory SignUpState({
    @Default(false) bool isLoading,
    Failure? failure,
  }) = _SignUpState;
}
