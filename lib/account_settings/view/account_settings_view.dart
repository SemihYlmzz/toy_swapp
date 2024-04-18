import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_constants/shared_constants.dart';
import 'package:shared_widgets/shared_widgets.dart';

import '../account_settings.dart';

class AccountSettingsView extends StatelessWidget {
  const AccountSettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    final currentViewState = context.select(
      (AccountSettingsCubit cubit) => cubit.state.currentViewState,
    );
    return BaseScaffold(
      safeArea: true,
      appBar: const AccountSettingsAppBar(),
      floatingActionButton:
          currentViewState == AccountSettingsViewState.updateAvatar
              ? Padding(
                  padding: SharedPaddings.bottom64 + SharedPaddings.bottom64,
                  child: FloatingActionButton(
                    backgroundColor: Colors.greenAccent.shade700,
                    onPressed: () {
                      context
                          .read<AccountSettingsCubit>()
                          .selectAvatarImageFromPhotos();
                    },
                    child: const Icon(Icons.photo_library),
                  ),
                )
              : null,
      body: PageTransitionSwitcher(
        duration: SharedDurations.ms370,
        reverse: currentViewState == AccountSettingsViewState.navigation,
        transitionBuilder: (child, primaryAnimation, secondaryAnimation) {
          return SharedAxisTransition(
            fillColor: Colors.transparent,
            transitionType: SharedAxisTransitionType.horizontal,
            animation: primaryAnimation,
            secondaryAnimation: secondaryAnimation,
            child: child,
          );
        },
        child: switch (currentViewState) {
          AccountSettingsViewState.navigation =>
            const AccountSettingsNavigatorView(),
          AccountSettingsViewState.updateAvatar => const UpdateAvatarView(),
          AccountSettingsViewState.updateUsername => const UpdateUsernameView(),
          AccountSettingsViewState.updateEmail => const UpdateEmailView(),
          AccountSettingsViewState.updatePassword => const UpdatePasswordView(),
          AccountSettingsViewState.deleteAccount => const DeleteAccountView(),
        },
      ),
    );
  }
}
