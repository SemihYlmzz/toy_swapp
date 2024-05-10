import 'package:flutter/material.dart';

class MatchesAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MatchesAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Matches'),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
