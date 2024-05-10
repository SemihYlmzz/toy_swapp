import 'package:flutter/material.dart';

class SupportReportsAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const SupportReportsAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Support Reports View'),
      centerTitle: true,
      forceMaterialTransparency: true,
      backgroundColor: Theme.of(context).colorScheme.background,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
