part of 'sign_up_bloc.dart';

@freezed
sealed class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.createUserWithEmailAndPassword({
    required Email email,
    required Password password,
    required ConfirmedPassword confirmedPassword,
  }) = SignUpCreateUserWithEmailAndPassword;
}
