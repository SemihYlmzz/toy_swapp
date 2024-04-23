import 'package:formz/formz.dart';
import 'package:toy_repository/src/constants/constants.dart';

enum ToyDescriptionObjectError {
  empty,
  tooShort,
  tooLong,
  moreThanTwoWords,
  haveTwoSpacesInARow,
  containsSpecialCharacters,
}

class ToyDescription extends FormzInput<String, ToyDescriptionObjectError> {
  const ToyDescription.pure() : super.pure('');
  const ToyDescription.dirty({String toyDescription = ''})
      : super.dirty(toyDescription);

  @override
  ToyDescriptionObjectError? validator(String value) {
    // TODO :
    // - Capitalize first letters. then check everything
    if (value.isEmpty) {
      return ToyDescriptionObjectError.empty;
    } else if (value.length < ToyRepositoryInts.minToyDescriptionLength) {
      return ToyDescriptionObjectError.tooShort;
    } else if (value.length > ToyRepositoryInts.maxToyDescriptionLength) {
      return ToyDescriptionObjectError.tooLong;
    } else if (value.contains('  ')) {
      return ToyDescriptionObjectError.haveTwoSpacesInARow;
    } else if (value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      return ToyDescriptionObjectError.containsSpecialCharacters;
    }
    return null;
  }
}
