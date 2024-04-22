import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_constants/shared_constants.dart';
import 'package:shared_widgets/shared_widgets.dart';

import '../../app/app.dart';
import '../../navigator_bar/bloc/navigator_bar_bloc.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    final currentConsumer = context.select(
      (NavigatorBarBloc bloc) => bloc.state.currentConsumer,
    );
    return BaseColumn(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SharedGap.gap16,
        ConsumerCard(
          consumer: currentConsumer,
        ),
      ],
    );
  }
}
