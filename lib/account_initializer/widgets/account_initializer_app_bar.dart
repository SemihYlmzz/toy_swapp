import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_constants/shared_constants.dart';
import '../account_initializer.dart';

class AccountInitializerAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const AccountInitializerAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        Animate(
          effects: const [
            FadeEffect(),
            ScaleEffect(
              begin: Offset(0.85, 0.85),
            ),
          ],
          delay: const Duration(seconds: 7),
          child: IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              // context.read<AccountInitializerBloc>().add(
              //       const AccountInitializerEvent.signOut(),
              //     );
            },
          ),
        ),
        SharedGap.gap12,
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
