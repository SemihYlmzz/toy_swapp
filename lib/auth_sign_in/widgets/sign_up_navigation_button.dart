import 'package:flutter/material.dart';
import 'package:toy_swapp/l10n/l10n.dart';

class SignUpNavigationButton extends StatelessWidget {
  const SignUpNavigationButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        // AuthSignUpRouter.instance.push(context);
        // context.pushNamed(AppNavigator.authSignUpPath);
      },
      child: Text(context.l10n.signUpNow),
    );
  }
}
