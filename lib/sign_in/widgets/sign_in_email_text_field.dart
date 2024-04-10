import 'package:auth_repository/auth_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_widgets/shared_widgets.dart';

import '../sign_in.dart';

class SignInEmailTextField extends StatelessWidget {
  const SignInEmailTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final state = context.watch<SignInCubit>().state;
    return GradientTextField(
      hintText: 'E-Mail',
      onChanged: (v) => context.read<SignInCubit>().updateEmail(v),
      errorText: state.email.isValid || !state.displayErrors
          ? null
          : switch (state.email.validator(state.email.value)) {
              EmailObjectError.empty => 'Email cannot be empty',
              EmailObjectError.invalid => 'Invalid email',
              _ => 'Not Valid'
            },
    );
  }
}
