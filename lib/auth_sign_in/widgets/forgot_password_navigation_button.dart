import 'package:flutter/material.dart';

class ForgotPasswordNavigationButton extends StatelessWidget {
  const ForgotPasswordNavigationButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        // AuthForgotPasswordRouter.instance.push(context);
      },
      child: const Text('context.l10n.forgot_password'),
    );
  }
}
