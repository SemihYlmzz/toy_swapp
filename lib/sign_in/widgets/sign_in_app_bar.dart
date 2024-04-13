import 'package:flutter/material.dart';
import 'package:shared_constants/shared_constants.dart';
import 'package:toy_swapp/settings/settings.dart';

class SignInAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SignInAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Sign In App Bar'),
      centerTitle: true,
      actions: [
        IconButton(
          icon: const Icon(Icons.settings),
          onPressed: () {
            SettingsRouter.instance.push(context);
          },
        ),
        SharedGap.gap8,
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
