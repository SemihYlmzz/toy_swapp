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
        padding: SharedPaddings.left12,
        child: Icon(
          Icons.search,
        ),
      ),
      actions: const [
        Icon(
          Icons.tune,
        ),
        SharedGap.gap12,
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
