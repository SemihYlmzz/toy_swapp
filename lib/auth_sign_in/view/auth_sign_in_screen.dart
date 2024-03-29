import 'package:current_user_preferences_repository/current_user_preferences_repository_api.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../auth_sign_in.dart';

class AuthSignInScreen extends StatelessWidget {
  const AuthSignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final authSignInBlocListeners = AuthSignInBlocListeners();

    return BlocProvider(
      create: (context) => AuthSignInBloc(
        // authRepository: context.read<AuthRepository>(),
        currentUserPreferencesRepository:
            context.read<CurrentUserPreferencesRepository>(),
      ),
      child: MultiBlocListener(
        listeners: [
          authSignInBlocListeners.errorDisplayer(),
        ],
        child: Builder(
          builder: (context) {
            final isLoading = context.select(
              (AuthSignInBloc bloc) => bloc.state.isLoading,
            );
            return const AuthSignInView();
          },
        ),
      ),
    );
  }
}
