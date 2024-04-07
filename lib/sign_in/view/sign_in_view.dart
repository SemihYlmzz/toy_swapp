import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_constants/shared_constants.dart';
import 'package:shared_widgets/shared_widgets.dart';

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
            GradientTextField(
              hintText: 'E-Mail',
              onChanged: (v) => context.read<SignInCubit>().updateEmail(v),
            ),
            SharedGap.gap16,
            GradientTextField(
              hintText: 'Password',
              obscureText: true,
              onChanged: (v) => context.read<SignInCubit>().updatePassword(v),
            ),
            SharedGap.gap16,
            ElevatedButton(
              child: const Text('Sign In'),
              onPressed: () {
                context.read<SignInBloc>().add(
                      SignInEvent.signInWithEmailAndPassword(
                        email: context.read<SignInCubit>().state.email,
                        password: context.read<SignInCubit>().state.password,
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
                    navigateToSignUp(context);
                  },
                  child: const Text('Sign Up'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void navigateToSignUp(BuildContext context) {
    SignUpRouter.instance.push(context);
  }
}
