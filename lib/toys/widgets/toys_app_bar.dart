import 'package:flutter/material.dart';

class ToysAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ToysAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Toys'),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
