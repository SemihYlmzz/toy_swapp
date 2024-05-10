import 'package:flutter/material.dart';

class ForgotPasswordAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const ForgotPasswordAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Forgot Password'),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
