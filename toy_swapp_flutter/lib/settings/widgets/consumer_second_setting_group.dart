import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../settings.dart';

class ConsumerSecondSettingGroup extends StatelessWidget {
  const ConsumerSecondSettingGroup({
    required this.discoverUsSetting,
    required this.helpSetting,
    required this.inviteAFriendSetting,
    super.key,
  });
  final Setting discoverUsSetting;
  final Setting helpSetting;
  final Setting inviteAFriendSetting;

  @override
  Widget build(BuildContext context) {
    final currentConsumer = context.select(
      (SettingsBloc bloc) => bloc.state.currentConsumer,
    );
    return currentConsumer != null
        ? SettingGroup(
            settings: [
              discoverUsSetting,
              helpSetting,
              inviteAFriendSetting,
            ],
          )
        : const SizedBox.shrink();
  }
}
