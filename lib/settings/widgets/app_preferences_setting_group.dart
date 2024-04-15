import 'package:flutter/material.dart';

import '../settings.dart';

class AppPreferencesSettingGroup extends StatelessWidget {
  const AppPreferencesSettingGroup({
    required this.themeSetting,
    required this.vibrationSetting,
    required this.permissionsSetting,
    super.key,
  });
  final Setting themeSetting;
  final Setting vibrationSetting;
  final Setting permissionsSetting;

  @override
  Widget build(BuildContext context) {
    return SettingGroup(
      settings: [
        themeSetting,
        vibrationSetting,
        permissionsSetting,
      ],
    );
  }
}
