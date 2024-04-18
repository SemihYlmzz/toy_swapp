import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toy_swapp/navigator_bar/navigator_bar.dart';

import '../profile.dart';

class ProfileToysCounter extends StatelessWidget {
  const ProfileToysCounter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final ownedToyCount = context.select(
      (NavigatorBarBloc bloc) => bloc.state.currentConsumer.counters.ownedToy,
    );
    return ProfileCounterDisplayer(
      counterName: 'Toys',
      counterValue: ownedToyCount,
    );
  }
}
