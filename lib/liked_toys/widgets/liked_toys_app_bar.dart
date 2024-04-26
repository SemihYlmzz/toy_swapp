import 'package:flutter/material.dart';

class LikedToysAppBar extends StatelessWidget implements PreferredSizeWidget {
  const LikedToysAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Liked Toys'),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
