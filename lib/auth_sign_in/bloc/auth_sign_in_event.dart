part of 'auth_sign_in_bloc.dart';

@freezed
sealed class AuthSignInEvent with _$AuthSignInEvent {
  const factory AuthSignInEvent.fetch() = AuthSignInFetch;
}
