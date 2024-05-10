import 'package:flutter/material.dart';

class AccountRegistrationAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const AccountRegistrationAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Account Registration'),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
