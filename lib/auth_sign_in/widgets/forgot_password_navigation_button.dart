import 'package:flutter/material.dart';
import 'package:toy_swapp/l10n/l10n.dart';

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
      child: Text(context.l10n.forgotPassword),
    );
  }
}
