import 'package:auth_repository/auth_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../settings.dart';

class SettingsDestructiveSignOutButton extends StatelessWidget {
  const SettingsDestructiveSignOutButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final currentAuth = context.select(
      (SettingsBloc bloc) => bloc.state.currentAuth,
    );
    return currentAuth.state == AuthState.auth
        ? DestructiveSetting(
            settingName: 'Sign Out',
            settingIconData: Icons.logout,
            onTap: () {
              context
                  .read<SettingsBloc>()
                  .add(const SettingsEvent.authSignOut());
            },
          )
        : const SizedBox.shrink();
  }
}
