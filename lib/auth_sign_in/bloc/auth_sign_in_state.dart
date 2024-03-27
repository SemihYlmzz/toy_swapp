part of 'auth_sign_in_bloc.dart';

@freezed
class AuthSignInState with _$AuthSignInState {
   const factory AuthSignInState({
    required FocusNode passwordFocusNode,
    @Default(false) bool isLoading,
    @Default(null) String? errorMessage,
    @Default('') String email,
    @Default('') String password,
  }) = _AuthSignInState;
}
