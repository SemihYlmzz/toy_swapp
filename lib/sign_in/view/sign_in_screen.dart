import 'package:current_user_preferences_repository/current_user_preferences_repository_api.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_widgets/shared_widgets.dart';

import '../sign_in.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final signInBlocListeners = SignInBlocListeners();

    return BlocProvider(
      create: (context) => SignInBloc(
        // authRepository: context.read<AuthRepository>(),
        currentUserPreferencesRepository:
            context.read<CurrentUserPreferencesRepository>(),
      ),
      child: MultiBlocListener(
        listeners: [
          signInBlocListeners.errorDisplayer(),
        ],
        child: Builder(
          builder: (context) {
            final isLoading = context.select(
              (SignInBloc bloc) => bloc.state.isLoading,
            );
            return LoadingScreen(
              isLoading: isLoading,
              size: MediaQuery.sizeOf(context),
              child: const SignInView(),
            );
          },
        ),
      ),
    );
  }
}
