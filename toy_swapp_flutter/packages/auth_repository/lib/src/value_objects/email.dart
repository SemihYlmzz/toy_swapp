import 'package:formz/formz.dart';

enum EmailObjectError { empty, invalid }

class Email extends FormzInput<String, EmailObjectError> {
  const Email.pure() : super.pure('');
  const Email.dirty({String value = ''}) : super.dirty(value);

  @override
  EmailObjectError? validator(String value) {
    final emailRegExp = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    );
    if (value.isEmpty) {
      return EmailObjectError.empty;
    } else if (!emailRegExp.hasMatch(value)) {
      return EmailObjectError.invalid;
    }
    return null;
  }
}
