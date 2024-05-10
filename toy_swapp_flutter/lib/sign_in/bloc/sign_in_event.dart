part of 'sign_in_bloc.dart';

@freezed
sealed class SignInEvent with _$SignInEvent {
  const factory SignInEvent.signInWithEmailAndPassword({
    required Email email,
    required Password password,
  }) = SignInWithEmailAndPassword;
}
