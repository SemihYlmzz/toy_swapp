import 'package:flutter/material.dart';

class AccountInitializerAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const AccountInitializerAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Account Initializer'),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
