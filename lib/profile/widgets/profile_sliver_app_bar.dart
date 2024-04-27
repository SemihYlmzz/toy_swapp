import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_constants/shared_constants.dart';

import '../../app/app.dart';
import '../../navigator_bar/navigator_bar.dart';

class ProfileSliverAppBar extends StatelessWidget {
  const ProfileSliverAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final currentConsumer =
        context.select((NavigatorBarBloc bloc) => bloc.state.currentConsumer);
    final firstName = currentConsumer.firstName;
    final lastName = currentConsumer.lastName;
    return SliverAppBar(
      floating: true,
      pinned: true,
      snap: true,
      expandedHeight: 160,
      surfaceTintColor: Colors.transparent,
      title: Text('$firstName $lastName'),
      actions: [
        IconButton(
          onPressed: () {
            Scaffold.of(context).openEndDrawer();
          },
          icon: const Icon(Icons.menu_rounded),
        ),
      ],
      flexibleSpace: FlexibleSpaceBar(
        background: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ConsumerCard(consumer: currentConsumer),
            SharedGap.gap16,
          ],
        ),
      ),
    );
  }
}
