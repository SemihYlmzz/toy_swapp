import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../navigator_bar/navigator_bar.dart';
import '../toys.dart';

class ToysGoRoute extends NavigatorBarSubGoRoute {
  factory ToysGoRoute() {
    return instance;
  }
  ToysGoRoute._() : super(path: _path, name: _name, pageBuilder: _pageBuilder);
  static final ToysGoRoute instance = ToysGoRoute._();

  static const String _path = '/toys';
  static const String _name = 'toys';

  static GoRouterPageBuilder get _pageBuilder =>
      (context, state) => const NoTransitionPage(
            child: ToysScreen(),
          );

  @override
  PreferredSizeWidget? get appBar => const ToysAppBar();

  void go(BuildContext context) {
    GoRouter.of(context).goNamed(_name);
  }

  void push(BuildContext context) {
    GoRouter.of(context).pushNamed(_name);
  }
}
