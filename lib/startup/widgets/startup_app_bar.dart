import 'package:flutter/material.dart';

class StartupAppBar extends StatelessWidget implements PreferredSizeWidget {
  const StartupAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Startup'),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
