import 'package:flutter/material.dart';

class SupportToyAcceptanceAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const SupportToyAcceptanceAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Support Toy Acceptance View'),
      centerTitle: true,
      forceMaterialTransparency: true,
      backgroundColor: Theme.of(context).colorScheme.surface,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
