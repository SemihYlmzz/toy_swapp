import 'package:flutter/material.dart';

class ToyDetailAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ToyDetailAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Toy Detail View'),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
