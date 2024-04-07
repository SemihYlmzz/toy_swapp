part of 'sign_in_cubit.dart';

@freezed
class SignInCubitState with _$SignInCubitState {
   const factory SignInCubitState({
    @Default('') String email,
    @Default('') String password,
  }) = _SignInCubitState;
}
