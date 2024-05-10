import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_widgets/shared_widgets.dart';

import '../sign_up.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final signUpBlocListeners = SignUpBlocListeners();

    return MultiBlocProvider(
      providers: [
        BlocProvider<SignUpBloc>(
          create: (context) => SignUpBloc(
            authRepository: context.read(),
          ),
        ),
        BlocProvider<SignUpCubit>(
          create: (context) => SignUpCubit(),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          signUpBlocListeners.errorDisplayer(),
        ],
        child: BlocSelector<SignUpBloc, SignUpState, bool>(
          selector: (state) => state.isLoading,
          builder: (context, isLoading) {
            return LoadingScreen(
              isLoading: isLoading,
              size: MediaQuery.sizeOf(context),
              child: const SignUpView(),
            );
          },
        ),
      ),
    );
  }
}
