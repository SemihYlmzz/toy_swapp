part of 'account_registration_cubit.dart';

@freezed
class AccountRegistrationCubitState with _$AccountRegistrationCubitState {
  const factory AccountRegistrationCubitState({
    Uint8List? avatar1024,
    Uint8List? avatar128,
    Uint8List? avatar256,
    Uint8List? avatar512,
    @Default('') String firstName,
    @Default('') String lastName,
    Location? location,
    String? errorMessage,
  }) = _AccountRegistrationCubitState;
}
