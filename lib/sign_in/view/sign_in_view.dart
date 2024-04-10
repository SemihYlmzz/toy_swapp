import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_constants/shared_constants.dart';
import 'package:shared_widgets/shared_widgets.dart';

import '../../forgot_password/forgot_password.dart';
import '../../sign_up/sign_up.dart';
import '../sign_in.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      appBar: const SignInAppBar(),
      body: Padding(
        padding: SharedPaddings.all12,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SignInEmailTextField(),
            SharedGap.gap16,
            const SignInPasswordTextField(),
            SharedGap.gap16,
            ElevatedButton(
              child: const Text('Sign In'),
              onPressed: () {
                final signInCubitState = context.read<SignInCubit>().state;
                final email = signInCubitState.email;
                final password = signInCubitState.password;

                if (email.isNotValid || password.isNotValid) {
                  context.read<SignInCubit>().displayErrors();
                  return;
                }
                context.read<SignInBloc>().add(
                      SignInEvent.signInWithEmailAndPassword(
                        email: signInCubitState.email,
                        password: signInCubitState.password,
                      ),
                    );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account?"),
                TextButton(
                  onPressed: () {
                    SignUpRouter.instance.push(context);
                  },
                  child: const Text('Sign Up'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Forgot your password'),
                TextButton(
                  onPressed: () {
                    ForgotPasswordRouter.instance.push(context);
                  },
                  child: const Text('Reset Password'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
