import 'package:flutter/material.dart';
import 'package:shared_constants/shared_constants.dart';

import '../settings.dart';

class DestructiveSetting extends StatelessWidget {
  const DestructiveSetting({
    required this.settingName,
    required this.settingIconData,
    required this.onTap,
    super.key,
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
