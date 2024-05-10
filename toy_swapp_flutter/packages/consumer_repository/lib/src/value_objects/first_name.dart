import 'package:formz/formz.dart';

enum FirstNameObjectError {
  empty,
  tooShort,
  tooLong,
  notChanged,
  moreThanTwoWords,
  haveTwoSpacesInARow,
  containsSpecialCharacters,
}

class FirstName extends FormzInput<
    ({String newFirstName, String currentFirstName}), FirstNameObjectError> {
  const FirstName.pure() : super.pure((newFirstName: '', currentFirstName: ''));
  const FirstName.dirty({
    String newFirstName = '',
    String currentFirstName = '',
  }) : super.dirty(
          (newFirstName: newFirstName, currentFirstName: currentFirstName),
        );

  @override
  FirstNameObjectError? validator(
    ({String newFirstName, String currentFirstName}) value,
  ) {
    final firstNameWords = value.newFirstName.split(' ');
    // TODO :
    // - Capitalize first letters. then check everything
    // - NewFirstName and FirstName should not be the same
    if (value.newFirstName.isEmpty) {
      return FirstNameObjectError.empty;
    } else if (value.newFirstName.length < 2) {
      return FirstNameObjectError.tooShort;
    } else if (value.newFirstName.length > 16) {
      return FirstNameObjectError.tooLong;
    } else if (value.newFirstName == value.currentFirstName) {
      return FirstNameObjectError.notChanged;
    } else if (firstNameWords.length > 2) {
      return FirstNameObjectError.moreThanTwoWords;
    } else if (value.newFirstName.contains('  ')) {
      return FirstNameObjectError.haveTwoSpacesInARow;
    } else if (value.newFirstName.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      return FirstNameObjectError.containsSpecialCharacters;
    }
    return null;
  }
}
