import 'package:formz/formz.dart';

enum LastNameObjectError {
  empty,
  tooShort,
  tooLong,
  notChanged,
  moreThanOneWord,
  haveTwoSpacesInARow,
  containsSpecialCharacters,
}

class LastName extends FormzInput<
    ({String newLastName, String currentLastName}), LastNameObjectError> {
  const LastName.pure() : super.pure((newLastName: '', currentLastName: ''));
  const LastName.dirty({String newLastName = '', String currentLastName = ''})
      : super.dirty(
          (newLastName: newLastName, currentLastName: currentLastName),
        );

  @override
  LastNameObjectError? validator(
    ({String newLastName, String currentLastName}) value,
  ) {
    if (value.newLastName.isEmpty) {
      return LastNameObjectError.empty;
    } else if (value.newLastName.length < 2) {
      return LastNameObjectError.tooShort;
    } else if (value.newLastName.length > 10) {
      return LastNameObjectError.tooLong;
    } else if (value.newLastName == value.currentLastName) {
      return LastNameObjectError.notChanged;
    } else if (value.newLastName.split(' ').length > 1) {
      return LastNameObjectError.moreThanOneWord;
    } else if (value.newLastName.contains('  ')) {
      return LastNameObjectError.haveTwoSpacesInARow;
    } else if (value.newLastName.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      return LastNameObjectError.containsSpecialCharacters;
    }
    return null;
  }
}
