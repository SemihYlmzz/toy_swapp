import 'package:flutter/material.dart';

class DemandsAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DemandsAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Demands'),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
