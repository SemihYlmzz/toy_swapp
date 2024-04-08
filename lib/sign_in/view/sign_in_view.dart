import 'package:auth_repository/auth_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_constants/shared_constants.dart';
import 'package:shared_widgets/shared_widgets.dart';

import '../../sign_up/sign_up.dart';
import '../../terms_of_use/terms_of_use.dart';
import '../sign_in.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<SignInCubit>().state;
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
              errorText: state.email.isValid || !state.displayErrors
                  ? null
                  : switch (state.email.validator(state.email.value)) {
                      EmailObjectError.empty => 'Email cannot be empty',
                      EmailObjectError.invalid => 'Invalid email',
                      _ => 'Not Valid'
                    },
            ),
            SharedGap.gap16,
            GradientTextField(
              hintText: 'Password',
              obscureText: true,
              onChanged: (v) => context.read<SignInCubit>().updatePassword(v),
              errorText: state.password.isValid || !state.displayErrors
                  ? null
                  : switch (state.password.validator(state.password.value)) {
                      PasswordObjectError.empty => 'Password cannot be empty',
                      PasswordObjectError.weak => 'Password is too weak',
                      PasswordObjectError.tooLong => 'Password is too long',
                      _ => 'Not Valid'
                    },
            ),
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
            ElevatedButton(
              child: const Text('Accept Terms of Use'),
              onPressed: () {
                TermsOfUsePopUps.showTermsOfUseAcceptance(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
