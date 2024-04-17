import 'package:flutter/material.dart';

class AccountSettingsAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const AccountSettingsAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Account Settings'),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
