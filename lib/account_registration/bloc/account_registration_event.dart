part of 'account_registration_bloc.dart';

@freezed
sealed class AccountRegistrationEvent with _$AccountRegistrationEvent {
  const factory AccountRegistrationEvent.registerAccount({
    required Uint8List avatarImage1024,
    required Uint8List avatarImage128,
    required Uint8List avatarImage256,
    required Uint8List avatarImage512,
    required String firstName,
    required String lastName,
    required double latitude,
    required double longitude,
  }) = AccountRegistrationRegisterAccount;
  const factory AccountRegistrationEvent.authStateUpdated(
    Auth updatedAuthState,
  ) = AccountRegistrationAuthStateUpdated;
}
