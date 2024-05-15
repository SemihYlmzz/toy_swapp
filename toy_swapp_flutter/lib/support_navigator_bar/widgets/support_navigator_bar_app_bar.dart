import 'package:flutter/material.dart';

class SupportNavigatorBarAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const SupportNavigatorBarAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Support Navigator Bar View'),
      centerTitle: true,
      forceMaterialTransparency: true,
      backgroundColor: Theme.of(context).colorScheme.surface,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
