part of 'account_registration_bloc.dart';

@freezed
sealed class AccountRegistrationEvent with _$AccountRegistrationEvent {
  const factory AccountRegistrationEvent.fetch() = AccountRegistrationFetch;
}
