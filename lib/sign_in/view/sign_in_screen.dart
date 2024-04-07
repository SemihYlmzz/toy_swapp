import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_widgets/shared_widgets.dart';

import '../sign_in.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final signInBlocListeners = SignInBlocListeners();

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SignInBloc(authRepository: context.read()),
        ),
        BlocProvider(create: (context) => SignInCubit()),
      ],
      child: MultiBlocListener(
        listeners: [
          signInBlocListeners.errorDisplayer(),
        ],
        child: BlocSelector<SignInBloc, SignInState, bool>(
          selector: (state) => state.isLoading,
          builder: (context, isLoading) {
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
