import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../navigator_bar/navigator_bar.dart';
import '../sub_matches.dart';

class SubMatchesGoRoute extends NavigatorBarSubGoRoute {
  factory SubMatchesGoRoute() {
    return instance;
  }
  SubMatchesGoRoute._()
      : super(path: _path, name: _name, pageBuilder: _pageBuilder);
  static final SubMatchesGoRoute instance = SubMatchesGoRoute._();

  static const String _path = 'sub_matches';
  static const String _name = 'sub_matches';

  static GoRouterPageBuilder get _pageBuilder =>
      (context, state) => const NoTransitionPage(
            child: SubMatchesScreen(),
          );
  @override
  PreferredSizeWidget? get appBar => const SubMatchesAppBar();

  void go(BuildContext context) {
    GoRouter.of(context).goNamed(_name);
  }

  void push(BuildContext context) {
    FocusManager.instance.primaryFocus?.unfocus();
    GoRouter.of(context).pushNamed(_name);
  }
}
