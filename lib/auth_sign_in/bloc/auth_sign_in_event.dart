part of 'auth_sign_in_bloc.dart';

@freezed
sealed class AuthSignInEvent with _$AuthSignInEvent {
  const factory AuthSignInEvent.signInWithEmailAndPassword() =
      AuthSignInWithEmailAndPassword;
  const factory AuthSignInEvent.signInWithGoogle() = AuthSignInWithGoogle;
  const factory AuthSignInEvent.changePassword({
    required String password,
  }) = AuthSignInChangePassword;
  const factory AuthSignInEvent.changeEmail({
    required String email,
  }) = AuthSignInChangeEmail;
}
