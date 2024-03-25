import 'package:flutter/material.dart';

class AuthSignInAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AuthSignInAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Auth Sign In Screen'),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
