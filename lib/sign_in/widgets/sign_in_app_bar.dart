import 'package:flutter/material.dart';

class SignInAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SignInAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Sign In App Bar'),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
