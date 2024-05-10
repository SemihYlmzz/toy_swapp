import 'package:flutter/material.dart';

import '../../sign_up/sign_up.dart';

class SignInToSignUpNavigator extends StatelessWidget {
  const SignInToSignUpNavigator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't have an account?"),
        TextButton(
          onPressed: () {
            SignUpRouter.instance.push(context);
          },
          child: const Text('Sign Up'),
        ),
      ],
    );
  }
}
