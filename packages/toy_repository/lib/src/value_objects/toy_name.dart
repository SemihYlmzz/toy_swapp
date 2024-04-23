import 'package:formz/formz.dart';

enum ToyNameObjectError {
  empty,
  tooShort,
  tooLong,
  moreThanTwoWords,
  haveTwoSpacesInARow,
  containsSpecialCharacters,
}

class ToyName extends FormzInput<String, ToyNameObjectError> {
  const ToyName.pure() : super.pure('');
  const ToyName.dirty({String toyName = ''}) : super.dirty(toyName);

  @override
  ToyNameObjectError? validator(String value) {
    final toyNameWords = value.split(' ');
    // TODO :
    // - Capitalize first letters. then check everything
    if (value.isEmpty) {
      return ToyNameObjectError.empty;
    } else if (value.length < 2) {
      return ToyNameObjectError.tooShort;
    } else if (value.length > 16) {
      return ToyNameObjectError.tooLong;
    } else if (toyNameWords.length > 2) {
      return ToyNameObjectError.moreThanTwoWords;
    } else if (value.contains('  ')) {
      return ToyNameObjectError.haveTwoSpacesInARow;
    } else if (value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      return ToyNameObjectError.containsSpecialCharacters;
    }
    return null;
  }
}
