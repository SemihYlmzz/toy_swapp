import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_constants/shared_constants.dart';
import 'package:shared_widgets/shared_widgets.dart';

import '../sign_up.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<SignUpCubit>().state;
    return BaseScaffold(
      appBar: const SignUpAppBar(),
      body: Padding(
        padding: SharedPaddings.all12,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GradientTextField(
              hintText: 'E-Mail',
              onChanged: (v) => context.read<SignUpCubit>().updateEmail(v),
              errorText: state.email.isNotValid && state.displayErrors
                  ? 'Sorun var.'
                  : null,
            ),
            SharedGap.gap16,
            GradientTextField(
              hintText: 'Password',
              obscureText: true,
              onChanged: (v) => context.read<SignUpCubit>().updatePassword(v),
              errorText: state.password.isNotValid && state.displayErrors
                  ? 'Sorun var.'
                  : null,
            ),
            SharedGap.gap16,
            GradientTextField(
              hintText: 'Confirm Password',
              obscureText: true,
              onChanged: (v) =>
                  context.read<SignUpCubit>().updateConfirmPassword(v),
              errorText:
                  state.confirmedPassword.isNotValid && state.displayErrors
                      ? 'Passwords do not match'
                      : null,
            ),
            ElevatedButton(
              onPressed: () {
                final signUpState = context.read<SignUpCubit>().state;
                final email = signUpState.email;
                final password = signUpState.password;
                final confirmPassword = signUpState.confirmedPassword;

                if (email.isNotValid ||
                    password.isNotValid ||
                    confirmPassword.isNotValid) {
                  context.read<SignUpCubit>().displayErrors();
                  return;
                }

                context.read<SignUpBloc>().add(
                      SignUpEvent.createUserWithEmailAndPassword(
                        email: email,
                        password: password,
                        confirmedPassword: confirmPassword,
                      ),
                    );
              },
              child: const Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}
