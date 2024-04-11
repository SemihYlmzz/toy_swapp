import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_widgets/shared_widgets.dart';

import '../email_verification.dart';

class EmailVerificationScreen extends StatelessWidget {
  const EmailVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final emailVerificationBlocListeners = EmailVerificationBlocListeners();

    return BlocProvider(
      create: (context) => EmailVerificationBloc(
        authRepository: context.read(),
      ),
      child: MultiBlocListener(
        listeners: [
          emailVerificationBlocListeners.errorDisplayer(),
        ],
        child:
            BlocSelector<EmailVerificationBloc, EmailVerificationState, bool>(
          selector: (state) => state.isLoading,
          builder: (context, isLoading) {
            return LoadingScreen(
              isLoading: isLoading,
              size: MediaQuery.sizeOf(context),
              child: const EmailVerificationView(),
            );
          },
        ),
      ),
    );
  }
}
