import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toy_swapp/navigator_bar/navigator_bar.dart';

import '../profile.dart';

class ProfileSwitchedCounter extends StatelessWidget {
  const ProfileSwitchedCounter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final switchsCount = context.select(
      (NavigatorBarBloc bloc) => bloc.state.currentConsumer.counters.switchs,
    );
    return ProfileCounterDisplayer(
      counterName: 'Switched',
      counterValue: switchsCount,
    );
  }
}
