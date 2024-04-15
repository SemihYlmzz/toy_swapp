import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../sign_in.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
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
    );
  }
}
