import 'package:formz/formz.dart';

enum ConfirmedPasswordValidationError { passwordNotMatch }

class ConfirmedPassword
    extends FormzInput<String, ConfirmedPasswordValidationError> {
  const ConfirmedPassword.pure({this.password = ''}) : super.pure('');
  const ConfirmedPassword.dirty({required this.password, String value = ''})
      : super.dirty(value);

  final String password;

  @override
  ConfirmedPasswordValidationError? validator(String? value) {
    if (password != value) {
      return ConfirmedPasswordValidationError.passwordNotMatch;
    }
    return null;
  }
}
