import 'package:auth_repository/auth_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toy_swapp/app/app.dart';

import '../sign_in.dart';

class SignInPasswordTextField extends StatelessWidget {
  const SignInPasswordTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final state = context.watch<SignInCubit>().state;

    return ToySwappTextField(
      labelText: 'Password',
      obscureText: true,
      focusNode: state.passwordFocusNode,
      onChanged: (v) => context.read<SignInCubit>().updatePassword(v),
      errorText: state.password.isValid || !state.displayErrors
          ? null
          : switch (state.password.validator(state.password.value)) {
              PasswordObjectError.empty => 'Password cannot be empty',
              PasswordObjectError.weak => 'Password is too weak',
              PasswordObjectError.tooLong => 'Password is too long',
              _ => 'Not Valid'
            },
    );
  }
}
