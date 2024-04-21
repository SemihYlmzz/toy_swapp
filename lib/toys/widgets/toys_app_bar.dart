import 'package:flutter/material.dart';
import 'package:shared_constants/shared_constants.dart';

class ToysAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ToysAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      surfaceTintColor: Colors.transparent,
      leading: const Padding(
        padding: SharedPaddings.left20,
        child: Icon(
          Icons.search,
          size: 32,
        ),
      ),
      actions: const [
        Icon(
          Icons.favorite_border,
          size: 32,
        ),
        SharedGap.gap20,
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
