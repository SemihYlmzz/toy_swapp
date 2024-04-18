import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../navigator_bar/bloc/navigator_bar_bloc.dart';

class ConsumerAvatarDisplayer extends StatelessWidget {
  const ConsumerAvatarDisplayer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final currentConsumerAvatarUrl256 = context.select(
      (NavigatorBarBloc bloc) => bloc.state.currentConsumer.avatarUrls.url256,
    );
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).colorScheme.primary,
          width: 2,
        ),
        shape: BoxShape.circle,
        image: DecorationImage(
          image: NetworkImage(
            currentConsumerAvatarUrl256,
            // 'https://picsum.photos/257/257',
          ),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
