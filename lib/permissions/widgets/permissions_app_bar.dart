import 'package:flutter/material.dart';

class PermissionsAppBar extends StatelessWidget implements PreferredSizeWidget {
  const PermissionsAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Permissions'),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
