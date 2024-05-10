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
    if (value.isEmpty) {
      return ToyNameObjectError.empty;
    } else if (value.length < 3) {
      return ToyNameObjectError.tooShort;
    } else if (value.length > 55) {
      return ToyNameObjectError.tooLong;
    } else if (value.contains('  ')) {
      return ToyNameObjectError.haveTwoSpacesInARow;
    } else if (value.contains(RegExp(r'[!@#$%^&*.?":{}|<>]'))) {
      return ToyNameObjectError.containsSpecialCharacters;
    }
    return null;
  }
}
