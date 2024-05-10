import 'package:flutter/material.dart';

class EmailVerificationAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const EmailVerificationAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Email Verification'),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
