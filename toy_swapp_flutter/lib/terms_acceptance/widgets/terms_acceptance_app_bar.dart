import 'package:flutter/material.dart';

class TermsAcceptanceAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const TermsAcceptanceAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Terms Acceptance'),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
