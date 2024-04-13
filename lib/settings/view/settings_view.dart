import 'package:flutter/material.dart';
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
          _SettingGroup(
            settings: [
              _Setting(
                iconColor: Colors.deepOrangeAccent,
                onTap: () {},
                settingIcon: Icons.person,
                settingName: 'Account',
              ),
              _Setting(
                iconColor: Colors.redAccent,
                onTap: () {},
                settingIcon: Icons.notifications,
                settingName: 'Notifications',
              ),
            ],
          ),
          _SettingGroup(
            settings: [
              _Setting(
                settingName: 'Theme',
                settingIcon: Icons.palette,
                onTap: () {},
                iconColor: Colors.deepPurpleAccent,
              ),
              _Setting(
                settingName: 'Vibration',
                settingIcon: Icons.vibration,
                onTap: () {},
                iconColor: Colors.lightGreen,
              ),
              _Setting(
                settingName: 'Permissions',
                settingIcon: Icons.share_location,
                onTap: () {},
                iconColor: Colors.lightBlueAccent,
              ),
            ],
          ),
          _SettingGroup(
            settings: [
              _Setting(
                settingName: 'Discover Us',
                settingIcon: Icons.group,
                onTap: () {},
                iconColor: Colors.yellow.shade700,
              ),
              _Setting(
                settingName: 'Help',
                settingIcon: Icons.info,
                onTap: () {},
                iconColor: Colors.blue,
              ),
              _Setting(
                settingName: 'Suggest to Friends',
                settingIcon: Icons.favorite,
                onTap: () {},
                iconColor: Colors.pinkAccent,
              ),
            ],
          ),
          _SettingGroup(
            settings: [
              _Setting(
                settingName: 'Privacy Policy',
                settingIcon: Icons.admin_panel_settings,
                onTap: () {},
                iconColor: Colors.white54,
              ),
              _Setting(
                settingName: 'Terms & Conditions',
                settingIcon: Icons.description,
                onTap: () {},
                iconColor: Colors.white54,
              ),
            ],
          ),
          const _DestructiveSettingButton(),
        ],
      ),
    );
  }
}

class _SettingGroup extends StatelessWidget {
  const _SettingGroup({required this.settings});
  final List<_Setting> settings;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: SharedPaddings.top20,
      child: Container(
        height: settings.length * 56 + (settings.length - 1) * 1,
        margin: SharedPaddings.horizontal32,
        decoration: BoxDecoration(
          color: Colors.white10,
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

class _Setting extends StatelessWidget {
  const _Setting({
    required this.settingName,
    required this.settingIcon,
    required this.onTap,
    required this.iconColor,
  });
  final String settingName;
  final IconData settingIcon;
  final VoidCallback onTap;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(settingName),
      leading: Container(
        padding: SharedPaddings.all4,
        decoration: BoxDecoration(
          borderRadius: SharedBorderRadius.circular8,
          color: iconColor,
        ),
        child: Icon(settingIcon),
      ),
      trailing: Icon(
        Icons.adaptive.arrow_forward,
        color: Colors.white24,
        size: 18,
      ),
      onTap: onTap,
    );
  }
}

class _DestructiveSettingButton extends StatelessWidget {
  const _DestructiveSettingButton();

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
        child: _Setting(
          iconColor: Colors.red,
          onTap: () {},
          settingIcon: Icons.logout,
          settingName: 'Sign Out',
        ),
      ),
    );
  }
}
