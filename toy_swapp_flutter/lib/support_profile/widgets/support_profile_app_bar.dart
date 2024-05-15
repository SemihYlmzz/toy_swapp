import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../support_navigator_bar/support_navigator_bar.dart';

class SupportProfileAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const SupportProfileAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Support Profile View'),
      centerTitle: true,
      forceMaterialTransparency: true,
      backgroundColor: Theme.of(context).colorScheme.surface,
      actions: [
        IconButton(
          icon: const Icon(Icons.logout),
          onPressed: () {
            context.read<SupportNavigatorBarBloc>().add(
                  const SupportNavigatorBarEvent.authSignOut(),
                );
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
