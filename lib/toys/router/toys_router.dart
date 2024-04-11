import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../toys.dart';

class ToysRouter {
  factory ToysRouter() {
    return instance;
  }
  ToysRouter._();
  static final ToysRouter instance = ToysRouter._();

  static const String _path = '/toys';
  static const String _name = 'toys';

  String get path => _path;
  String get name => _name;

  GoRoute get route => GoRoute(
        path: _path,
        name: _name,
        // parentNavigatorKey: RouterMixin.parentNavigatorKey,
        pageBuilder: (context, state) => const NoTransitionPage(
          child: ToysScreen(),
        ),
      );
  void go(BuildContext context) {
    GoRouter.of(context).goNamed(_name);
  }

  void push(BuildContext context) {
    GoRouter.of(context).pushNamed(_name);
  }
}
