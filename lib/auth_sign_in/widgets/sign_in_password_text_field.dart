import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toy_swapp/l10n/l10n.dart';
import '../auth_sign_in.dart';

class SignInPasswordTextField extends StatelessWidget {
  const SignInPasswordTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GradientTextField(
      hintText: context.l10n.password,
      focusNode: context.read<AuthSignInBloc>().state.passwordFocusNode,
      obscureText: true,
      onChanged: (value) {
        context.read<AuthSignInBloc>().add(
              AuthSignInEvent.changePassword(password: value),
            );
      },
      onSubmitted: (value) {
        context.read<AuthSignInBloc>().add(
              const AuthSignInEvent.signInWithEmailAndPassword(),
            );
      },
    );
  }
}
