import 'package:flutter/material.dart';
import 'package:toy_swapp/l10n/l10n.dart';

class SignInAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SignInAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(context.l10n.signIn),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
