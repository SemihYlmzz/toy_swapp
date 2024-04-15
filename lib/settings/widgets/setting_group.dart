import 'package:flutter/material.dart';
import 'package:shared_constants/shared_constants.dart';

import '../settings.dart';

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
