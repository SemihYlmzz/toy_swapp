import 'package:flutter/material.dart';

import '../settings.dart';

class TermsSettingGroup extends StatelessWidget {
  const TermsSettingGroup({
    required this.privacyPolicySetting,
    required this.termsAndConditionsSetting,
    super.key,
  });
  final Setting privacyPolicySetting;
  final Setting termsAndConditionsSetting;
  @override
  Widget build(BuildContext context) {
    return SettingGroup(
      settings: [
        privacyPolicySetting,
        termsAndConditionsSetting,
      ],
    );
  }
}
