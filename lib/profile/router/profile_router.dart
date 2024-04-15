import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../navigator_bar/navigator_bar.dart';
import '../profile.dart';

class ProfileGoRoute extends NavigatorBarSubGoRoute {
  factory ProfileGoRoute() {
    return instance;
  }
  ProfileGoRoute._()
      : super(path: _path, name: _name, pageBuilder: _pageBuilder);
  static final ProfileGoRoute instance = ProfileGoRoute._();

  static const String _path = '/profile';
  static const String _name = 'profile';
  static GoRouterPageBuilder get _pageBuilder =>
      (context, state) => const NoTransitionPage(
            child: ProfileScreen(),
          );

  @override
  PreferredSizeWidget? get appBar => const ProfileAppBar();

  @override
  Widget? get endDrawer => const ProfileDrawer();

  void go(BuildContext context) {
    GoRouter.of(context).goNamed(_name);
  }

  void push(BuildContext context) {
    FocusManager.instance.primaryFocus?.unfocus();
    GoRouter.of(context).pushNamed(_name);
  }
}
