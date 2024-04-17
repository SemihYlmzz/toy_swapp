import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../navigator_bar/navigator_bar.dart';

class ProfileAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ProfileAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final currentUser =
        context.select((NavigatorBarBloc bloc) => bloc.state.currentConsumer);
    final firstName = currentUser.firstName;
    final lastName = currentUser.lastName;
    return AppBar(
      title: Text('$firstName $lastName'),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
