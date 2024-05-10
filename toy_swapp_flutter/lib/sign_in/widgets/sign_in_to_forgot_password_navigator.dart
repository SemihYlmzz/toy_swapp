import 'package:flutter/material.dart';

import '../../forgot_password/forgot_password.dart';


class SignInToForgotPasswordNavigator extends StatelessWidget {
  const SignInToForgotPasswordNavigator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Forgot your password'),
        TextButton(
          onPressed: () {
            ForgotPasswordRouter.instance.push(context);
          },
          child: const Text('Reset Password'),
        ),
      ],
    );
  }
}
