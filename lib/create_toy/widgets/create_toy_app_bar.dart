import 'package:flutter/material.dart';

class CreateToyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CreateToyAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Create Toy'),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
