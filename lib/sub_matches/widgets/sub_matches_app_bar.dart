import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SubMatchesAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SubMatchesAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Sub Matches'),
      leading: BackButton(
        onPressed: () {
          if (context.canPop()) {
            context.pop();
          }
        },
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
