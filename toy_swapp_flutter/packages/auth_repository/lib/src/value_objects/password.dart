import 'package:formz/formz.dart';

enum PasswordObjectError { empty, weak, tooLong }

class Password extends FormzInput<String, PasswordObjectError> {
  const Password.pure() : super.pure('');
  const Password.dirty({String value = ''}) : super.dirty(value);

  @override
  PasswordObjectError? validator(String value) {
    if (value.isEmpty) {
      return PasswordObjectError.empty;
    } else if (value.length < 6) {
      return PasswordObjectError.weak;
    } else if (value.length > 9) {
      return PasswordObjectError.tooLong;
    }
    return null;
  }
}
