import 'package:flutter/material.dart';

import '../../sign_up/sign_up.dart';
import '../sign_in.dart';

class SignUpNavigationButton extends StatelessWidget {
  const SignUpNavigationButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        SignUpRouter.instance.push(context);
      },
      child: Text(context.signInLocalization.signUpNow),
    );
  }
}
