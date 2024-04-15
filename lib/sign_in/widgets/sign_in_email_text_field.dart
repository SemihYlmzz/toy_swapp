import 'package:auth_repository/auth_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../app/app.dart';
import '../sign_in.dart';

class SignInEmailTextField extends StatelessWidget {
  const SignInEmailTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final state = context.watch<SignInCubit>().state;
    return ToySwappTextField(
      labelText: 'E-Mail',
      errorText: state.email.isNotValid && state.displayErrors
          ? switch (state.email.validator(state.email.value)) {
              EmailObjectError.empty => 'Email cannot be empty',
              EmailObjectError.invalid => 'Invalid email',
              _ => 'Not Valid'
            }
          : null,
      onChanged: (v) => context.read<SignInCubit>().updateEmail(v),
      onSubmit: (v) => state.passwordFocusNode.requestFocus(),
    );
  }
}
