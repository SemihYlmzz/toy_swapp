import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../account_settings.dart';

class AccountSettingsAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const AccountSettingsAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final currentView = context.select(
      (AccountSettingsCubit bloc) => bloc.state.currentViewState,
    );
    return AppBar(
      leading: BackButton(
        onPressed: () {
          if (currentView != AccountSettingsViewState.navigation) {
            context.read<AccountSettingsCubit>().updateViewState(
                  AccountSettingsViewState.navigation,
                );
            return;
          }
          if (!context.canPop()) {
            return;
          }
          context.pop();
        },
      ),
      title: Text(
        switch (currentView) {
          AccountSettingsViewState.navigation => 'Account Settings',
          AccountSettingsViewState.deleteAccount => 'Delete Account',
          AccountSettingsViewState.updateAvatar => 'Update Avatar',
          AccountSettingsViewState.updateEmail => 'Update Email',
          AccountSettingsViewState.updateFullName => 'Update Full Name',
          AccountSettingsViewState.updatePassword => 'Update Password',
        },
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
