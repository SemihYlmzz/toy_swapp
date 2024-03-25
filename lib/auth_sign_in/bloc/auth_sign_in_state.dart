part of 'auth_sign_in_bloc.dart';

@freezed
class AuthSignInState with _$AuthSignInState {
   const factory AuthSignInState({
    @Default(false) bool isLoading,
    @Default(null) String? errorMessage,
  }) = _AuthSignInState;
}
