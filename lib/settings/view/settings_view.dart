import 'package:auth_repository/auth_repository.dart';
import 'package:consumer_repository/consumer_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:linkpeek/linkpeek.dart';
import 'package:shared_constants/shared_constants.dart';
import 'package:shared_widgets/shared_widgets.dart';

import '../settings.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: SettingsAppBar(),
      body: BaseColumn(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ConsumerFirstSettingGroup(),
          AppPreferencesSettingGroup(),
          ConsumerSecondSettingGroup(),
          TermsSettingGroup(),
          SettingsSignOutButton(),
          SharedGap.gap12,
          AppVersionText(),
          SharedGap.gap32,
        ],
      ),
    );
  }
}

class AppVersionText extends StatelessWidget {
  const AppVersionText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final appVersion = context.select(
      (SettingsBloc bloc) => bloc.state.appMetadata.version,
    );
    return Text(
      'Version: $appVersion',
      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: Theme.of(context).colorScheme.onBackground.withOpacity(0.5),
          ),
    );
  }
}

class TermsSettingGroup extends StatelessWidget {
  const TermsSettingGroup({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final appMetadata =
        context.select((SettingsBloc bloc) => bloc.state.appMetadata);
    return SettingGroup(
      settings: [
        Setting(
          settingName: 'Privacy Policy',
          settingIcon: Icons.admin_panel_settings,
          onTap: () {},
          iconColor: Colors.white54,
        ),
        Setting(
          settingName: 'Terms & Conditions',
          settingIcon: Icons.description,
          onTap: () {
            LinkPeek.showLinkPeekPopup(
              context,
              appMetadata.termsVersions.termsOfServiceUrl,
            );
          },
          iconColor: Colors.white54,
        ),
      ],
    );
  }
}

class AppPreferencesSettingGroup extends StatelessWidget {
  const AppPreferencesSettingGroup({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SettingGroup(
      settings: [
        Setting(
          settingName: 'Theme',
          settingIcon: Icons.palette,
          onTap: () {},
          iconColor: Colors.deepPurpleAccent,
        ),
        Setting(
          settingName: 'Vibration',
          settingIcon: Icons.vibration,
          iconColor: Colors.lightGreen,
          switchValue: true,
          onSwitchChanged: ({required value}) {},
        ),
        Setting(
          settingName: 'Permissions',
          settingIcon: Icons.share_location,
          onTap: () {},
          iconColor: Colors.lightBlueAccent,
        ),
      ],
    );
  }
}

class ConsumerSecondSettingGroup extends StatelessWidget {
  const ConsumerSecondSettingGroup({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final currentConsumer = context.select(
      (SettingsBloc bloc) => bloc.state.currentConsumer,
    );
    return currentConsumer.state == ConsumerState.hasData
        ? SettingGroup(
            settings: [
              Setting(
                settingName: 'Discover Us',
                settingIcon: Icons.group,
                onTap: () {},
                iconColor: Colors.yellow.shade700,
              ),
              Setting(
                settingName: 'Help',
                settingIcon: Icons.info,
                onTap: () {},
                iconColor: Colors.blue,
              ),
              Setting(
                settingName: 'Invite a Friend',
                settingIcon: Icons.favorite,
                onTap: () {},
                iconColor: Colors.pinkAccent,
              ),
            ],
          )
        : const SizedBox.shrink();
  }
}

class ConsumerFirstSettingGroup extends StatelessWidget {
  const ConsumerFirstSettingGroup({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final currentConsumer = context.select(
      (SettingsBloc bloc) => bloc.state.currentConsumer,
    );
    return currentConsumer.state == ConsumerState.hasData
        ? SettingGroup(
            settings: [
              Setting(
                iconColor: Colors.deepOrangeAccent,
                onTap: () {},
                settingIcon: Icons.person,
                settingName: 'Account',
              ),
              Setting(
                iconColor: Colors.redAccent,
                onTap: () {},
                settingIcon: Icons.notifications,
                settingName: 'Notifications',
              ),
            ],
          )
        : const SizedBox.shrink();
  }
}

class SettingsSignOutButton extends StatelessWidget {
  const SettingsSignOutButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final currentAuth = context.select(
      (SettingsBloc bloc) => bloc.state.currentAuth,
    );
    return currentAuth.state == AuthState.auth
        ? _DestructiveSettingButton(
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

class SettingGroup extends StatelessWidget {
  const SettingGroup({required this.settings, super.key});
  final List<Setting> settings;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: SharedPaddings.top20,
      child: Container(
        height: settings.length * 56 + (settings.length - 1) * 1,
        margin: SharedPaddings.horizontal32,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.1),
          borderRadius: SharedBorderRadius.circular12,
        ),
        child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: settings.length,
          itemBuilder: (context, index) => Column(
            children: [
              settings.elementAt(index),
              if (index != settings.length - 1)
                const Divider(
                  indent: 56,
                  color: Colors.white30,
                  height: 0,
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class Setting extends StatelessWidget {
  const Setting({
    required this.settingName,
    required this.settingIcon,
    required this.iconColor,
    this.onTap,
    this.switchValue,
    this.onSwitchChanged,
    super.key,
  });

  final String settingName;
  final IconData settingIcon;
  final VoidCallback? onTap;
  final Color iconColor;
  final bool? switchValue;
  final void Function({required bool value})? onSwitchChanged;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(
        borderRadius: SharedBorderRadius.circular12,
      ),
      title: Text(settingName),
      leading: Container(
        padding: SharedPaddings.all4,
        decoration: BoxDecoration(
          borderRadius: SharedBorderRadius.circular8,
          color: iconColor,
        ),
        child: Icon(settingIcon),
      ),
      trailing: switchValue == null
          ? Icon(
              Icons.adaptive.arrow_forward,
              color: Colors.white24,
              size: 18,
            )
          : Switch.adaptive(
              value: switchValue!,
              onChanged: (value) {
                onSwitchChanged?.call(value: value);
              },
            ),
      onTap: onTap,
    );
  }
}

class _DestructiveSettingButton extends StatelessWidget {
  const _DestructiveSettingButton({
    required this.settingName,
    required this.settingIconData,
    required this.onTap,
  });
  final String settingName;
  final IconData settingIconData;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: SharedPaddings.top20,
      child: Container(
        height: 56,
        margin: SharedPaddings.horizontal32,
        decoration: BoxDecoration(
          color: Colors.red.withOpacity(0.25),
          borderRadius: SharedBorderRadius.circular12,
        ),
        child: Setting(
          iconColor: Colors.red,
          onTap: onTap,
          settingIcon: settingIconData,
          settingName: settingName,
        ),
      ),
    );
  }
}
