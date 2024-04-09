part of 'account_registration_bloc.dart';

@freezed
class AccountRegistrationState with _$AccountRegistrationState {
   const factory AccountRegistrationState({
    @Default(false) bool isLoading,
    Failure? failure,
  }) = _AccountRegistrationState;
}
