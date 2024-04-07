part of 'sign_up_cubit.dart';

@freezed
class SignUpCubitState with _$SignUpCubitState {
  const factory SignUpCubitState({
    @Default('') String email,
    @Default('') String password,
    @Default('') String confirmPassword,
  }) = _SignUpCubitState;
}
