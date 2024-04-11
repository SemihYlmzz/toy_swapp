import 'package:flutter/material.dart';

class NavigatorBarAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const NavigatorBarAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Navigator Bar'),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
