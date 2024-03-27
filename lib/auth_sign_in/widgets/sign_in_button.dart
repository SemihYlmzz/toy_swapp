import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toy_swapp/l10n/l10n.dart';
import '../auth_sign_in.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        context.read<AuthSignInBloc>().add(
              const AuthSignInEvent.signInWithEmailAndPassword(),
            );
      },
      child: Text(context.l10n.signIn),
    );
  }
}
