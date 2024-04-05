import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_widgets/shared_widgets.dart';
import 'package:toy_swapp/l10n/l10n.dart';
import '../sign_in.dart';

class SignInPasswordTextField extends StatelessWidget {
  const SignInPasswordTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GradientTextField(
      hintText: context.l10n.password,
      focusNode: context.read<SignInBloc>().state.passwordFocusNode,
      obscureText: true,
      onChanged: (value) {
        context.read<SignInBloc>().add(
              SignInEvent.changePassword(password: value),
            );
      },
      onSubmitted: (value) {
        context.read<SignInBloc>().add(
              const SignInEvent.signInWithEmailAndPassword(),
            );
      },
    );
  }
}
