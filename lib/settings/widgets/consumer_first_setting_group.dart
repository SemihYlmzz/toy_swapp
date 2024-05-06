import 'package:consumer_repository/consumer_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../settings.dart';

class ConsumerFirstSettingGroup extends StatelessWidget {
  const ConsumerFirstSettingGroup({
    required this.accountSetting,
    required this.notificationsSetting,
    super.key,
  });
  final Setting accountSetting;
  final Setting notificationsSetting;

  @override
  Widget build(BuildContext context) {
    final currentConsumer = context.select(
      (SettingsBloc bloc) => bloc.state.currentConsumer,
    );
    return currentConsumer != null
        ? SettingGroup(
            settings: [
              accountSetting,
              notificationsSetting,
            ],
          )
        : const SizedBox.shrink();
  }
}
