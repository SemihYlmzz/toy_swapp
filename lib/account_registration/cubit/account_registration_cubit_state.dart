part of 'account_registration_cubit.dart';

@freezed
class AccountRegistrationCubitState with _$AccountRegistrationCubitState {
  const factory AccountRegistrationCubitState({
    Uint8List? avatarImage,
    @Default('') String firstName,
    @Default('') String lastName,
    ({double latitude, double longitude})? location,
    String? errorMessage,
  }) = _AccountRegistrationCubitState;
}
