import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toy_swapp/navigator_bar/navigator_bar.dart';

import '../profile.dart';

class ProfileChanceCounter extends StatelessWidget {
  const ProfileChanceCounter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final switchChanceCount = context.select(
      (NavigatorBarBloc bloc) =>
          bloc.state.currentConsumer.counters.switchChance,
    );
    return ProfileCounterDisplayer(
      counterName: 'Chance',
      counterValue: switchChanceCount,
    );
  }
}
