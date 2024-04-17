import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_constants/shared_constants.dart';
import 'package:toy_swapp/settings/settings.dart';

class Setting extends StatelessWidget {
  const Setting({
    required this.settingName,
    required this.settingIcon,
    required this.iconColor,
    this.trailing,
    this.onTap,
    super.key,
  });

  final String settingName;
  final IconData settingIcon;
  final VoidCallback? onTap;
  final Color iconColor;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    final isVibratable = context.select(
      (SettingsBloc bloc) => bloc.state.appPreferences.isVibratable,
    );
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
      trailing: trailing ??
          Icon(
            Icons.adaptive.arrow_forward,
            color: Colors.white24,
            size: 18,
          ),
      onTap: onTap == null
          ? null
          : () {
              if (isVibratable) HapticFeedback.mediumImpact();
              onTap?.call();
            },
    );
  }
}
