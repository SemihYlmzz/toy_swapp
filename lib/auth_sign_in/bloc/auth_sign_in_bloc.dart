import 'package:current_user_preferences_repository/current_user_preferences_repository_api.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_sign_in_bloc.freezed.dart';
part 'auth_sign_in_event.dart';
part 'auth_sign_in_state.dart';

class AuthSignInBloc extends Bloc<AuthSignInEvent, AuthSignInState> {
  AuthSignInBloc({
    required CurrentUserPreferencesRepository currentUserPreferencesRepository,
  })  : //_authRepository = authRepository,
        _currentUserPreferencesRepository = currentUserPreferencesRepository,
        super(AuthSignInState(passwordFocusNode: FocusNode())) {
    on<AuthSignInEvent>(_onAuthSignInEvent);
  }
  // final AuthRepository _authRepository;
  final CurrentUserPreferencesRepository _currentUserPreferencesRepository;
  Future<void> _onAuthSignInEvent(
    AuthSignInEvent event,
    Emitter<AuthSignInState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    await event.map(
      signInWithEmailAndPassword: (e) async {
        await _currentUserPreferencesRepository.updateTheme(
          updatedThemeMode: ThemeMode.dark,
        );
        // final tryEvent = await _authRepository.signInWithEmailAndPassword(
        //   email: state.email,
        //   password: state.password,
        // );
        // tryEvent.fold(
        //   (failure) => emit(state.copyWith(errorMessage: failure.message)),
        //   (r) => null,
        // );
      },
      signInWithGoogle: (e) async {
        await _currentUserPreferencesRepository.updateTheme(
          updatedThemeMode: ThemeMode.light,
        );
        // final trySignIn = await _authRepository.signInWithGoogle();
        // trySignIn.fold(
        //   (failure) => emit(state.copyWith(errorMessage: failure.message)),
        //   (success) => null,
        // );
      },
      changePassword: (e) async {
        // emit(state.copyWith(email: event.email));
      },
      changeEmail: (e) async {
        // emit(state.copyWith(password: event.password));
      },
    );
    emit(state.copyWith(isLoading: false, errorMessage: null));
  }
}
