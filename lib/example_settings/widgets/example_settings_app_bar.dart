import 'package:flutter/material.dart';

class ExampleSettingsAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ExampleSettingsAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Example Settings Screen'),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
