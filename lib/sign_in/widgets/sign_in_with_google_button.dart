import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toy_swapp/l10n/l10n.dart';
import '../sign_in.dart';

class SignInWithGoogleButton extends StatelessWidget {
  const SignInWithGoogleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(context.l10n.signInWithGoogle),
      onPressed: () {
        context
            .read<SignInBloc>()
            .add(const SignInEvent.signInWithGoogle());
      },
    );
  }
}
