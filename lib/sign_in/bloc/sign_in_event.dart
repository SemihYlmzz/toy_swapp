part of 'sign_in_bloc.dart';

@freezed
sealed class SignInEvent with _$SignInEvent {
  const factory SignInEvent.signInWithEmailAndPassword() =
      SignInWithEmailAndPassword;
  const factory SignInEvent.signInWithGoogle() = SignInWithGoogle;
  const factory SignInEvent.changePassword({
    required String password,
  }) = SignInChangePassword;
  const factory SignInEvent.changeEmail({
    required String email,
  }) = SignInChangeEmail;
}
