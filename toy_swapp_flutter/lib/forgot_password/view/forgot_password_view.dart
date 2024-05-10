import 'package:auth_repository/auth_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_constants/shared_constants.dart';
import 'package:shared_widgets/shared_widgets.dart';

import '../forgot_password.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});
  @override
  Widget build(BuildContext context) {
    final state = context.watch<ForgotPasswordCubit>().state;
    return BaseScaffold(
      appBar: const ForgotPasswordAppBar(),
      body: Padding(
        padding: SharedPaddings.all12,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GradientTextField(
              hintText: 'E-Mail',
              onChanged: (v) =>
                  context.read<ForgotPasswordCubit>().updateEmail(v),
              errorText: state.email.isValid || !state.displayErrors
                  ? null
                  : switch (state.email.validator(state.email.value)) {
                      EmailObjectError.empty => 'Email cannot be empty',
                      EmailObjectError.invalid => 'Invalid email',
                      _ => 'Not Valid'
                    },
            ),
            Center(
              child: TextButton(
                onPressed: () {
                  final email = state.email;

                  if (email.isNotValid) {
                    context.read<ForgotPasswordCubit>().displayErrors();
                    return;
                  }
                  context.read<ForgotPasswordBloc>().add(
                        ForgotPasswordEvent.sendPasswordResetEmail(
                          email: email,
                        ),
                      );
                },
                child: const Text('Send email'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
