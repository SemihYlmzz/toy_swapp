import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_widgets/shared_widgets.dart';

import '../forgot_password.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final forgotPasswordBlocListeners = ForgotPasswordBlocListeners();

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ForgotPasswordBloc(
            authRepository: context.read(),
          ),
        ),
        BlocProvider(create: (context) => ForgotPasswordCubit()),
      ],
      child: MultiBlocListener(
        listeners: [
          forgotPasswordBlocListeners.errorDisplayer(),
          forgotPasswordBlocListeners.popWhenMailSended(),
        ],
        child: BlocSelector<ForgotPasswordBloc, ForgotPasswordState, bool>(
          selector: (state) => state.isLoading,
          builder: (context, isLoading) {
            return LoadingScreen(
              isLoading: isLoading,
              size: MediaQuery.sizeOf(context),
              child: const ForgotPasswordView(),
            );
          },
        ),
      ),
    );
  }
}
