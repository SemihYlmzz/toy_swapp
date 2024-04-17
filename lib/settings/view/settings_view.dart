import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:linkpeek/linkpeek.dart';
import 'package:shared_constants/shared_constants.dart';
import 'package:shared_widgets/shared_widgets.dart';

import '../settings.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SettingsAppBar(),
      body: BaseColumn(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ConsumerFirstSettingGroup(
            accountSetting: _accountSetting(),
            notificationsSetting: _notificationsSetting(),
          ),
          AppPreferencesSettingGroup(
            themeSetting: _themeSetting(context),
            vibrationSetting: _vibrationSetting(context),
            permissionsSetting: _permissionSetting(),
          ),
          ConsumerSecondSettingGroup(
            discoverUsSetting: _discoverUsSetting(),
            helpSetting: _helpSetting(),
            inviteAFriendSetting: _inviteAFriendSetting(),
          ),
          TermsSettingGroup(
            privacyPolicySetting: _privacyPolicySetting(),
            termsAndConditionsSetting: _termsAndConditionsSetting(context),
          ),
          const SettingsDestructiveSignOutButton(),
          SharedGap.gap12,
          const AppVersionText(),
          SharedGap.gap32,
        ],
      ),
    );
  }

  Setting _termsAndConditionsSetting(BuildContext context) {
    final appMetadata =
        context.select((SettingsBloc bloc) => bloc.state.appMetadata);
    return Setting(
      settingName: 'Terms & Conditions',
      settingIcon: Icons.description,
      onTap: () {
        LinkPeek.showLinkPeekPopup(
          context,
          appMetadata.termsVersions.termsOfServiceUrl,
        );
      },
      iconColor: Colors.white54,
    );
  }

  Setting _privacyPolicySetting() {
    return Setting(
      settingName: 'Privacy Policy',
      settingIcon: Icons.admin_panel_settings,
      onTap: () {},
      iconColor: Colors.white54,
    );
  }

  Setting _notificationsSetting() {
    return Setting(
      iconColor: Colors.redAccent,
      onTap: () {},
      settingIcon: Icons.notifications,
      settingName: 'Notifications',
    );
  }

  Setting _accountSetting() {
    return Setting(
      iconColor: Colors.deepOrangeAccent,
      onTap: () {},
      settingIcon: Icons.person,
      settingName: 'Account',
    );
  }

  Setting _permissionSetting() {
    return Setting(
      settingName: 'Permissions',
      settingIcon: Icons.share_location,
      onTap: () {},
      iconColor: Colors.lightBlueAccent,
    );
  }

  Setting _vibrationSetting(
    BuildContext context,
  ) {
    final isVibratable = context
        .select((SettingsBloc bloc) => bloc.state.appPreferences.isVibratable);
    return Setting(
      settingName: 'Vibration',
      settingIcon: Icons.vibration,
      iconColor: Colors.lightGreen,
      trailing: Switch.adaptive(
        value: isVibratable,
        onChanged: (value) {
          if (value) HapticFeedback.mediumImpact();
          context.read<SettingsBloc>().add(
                SettingsEvent.updateIsVibratable(updatedIsVibratable: value),
              );
        },
      ),
    );
  }

  Setting _themeSetting(BuildContext context) {
    return const Setting(
      settingName: 'Theme',
      settingIcon: Icons.palette,
      trailing: ThemeModePickerDropdownButton(),
      iconColor: Colors.deepPurpleAccent,
    );
  }

  Setting _inviteAFriendSetting() {
    return Setting(
      settingName: 'Invite a Friend',
      settingIcon: Icons.favorite,
      onTap: () {},
      iconColor: Colors.pinkAccent,
    );
  }

  Setting _helpSetting() {
    return Setting(
      settingName: 'Help',
      settingIcon: Icons.info,
      onTap: () {},
      iconColor: Colors.blue,
    );
  }

  Setting _discoverUsSetting() {
    return Setting(
      settingName: 'Discover Us',
      settingIcon: Icons.group,
      onTap: () {},
      iconColor: Colors.yellow.shade700,
    );
  }
}
