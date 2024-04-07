import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../home.dart';

class HomeRouter {
  factory HomeRouter() {
    return instance;
  }
  HomeRouter._();
  static final HomeRouter instance = HomeRouter._();

  static const String _path = '/home';
  static const String _name = 'home';

  String get path => _path;
  String get name => _name;

  GoRoute get route => GoRoute(
        path: _path,
        name: _name,
        // parentNavigatorKey: RouterMixin.parentNavigatorKey,
        pageBuilder: (context, state) => const NoTransitionPage(
          child: HomeScreen(),
        ),
      );

  void go(BuildContext context) {
    GoRouter.of(context).goNamed(_name);
  }

  void push(BuildContext context) {
    GoRouter.of(context).pushNamed(_name);
  }
}
