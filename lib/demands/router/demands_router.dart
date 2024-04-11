import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../demands.dart';

class DemandsRouter {
  factory DemandsRouter() {
    return instance;
  }
  DemandsRouter._();
  static final DemandsRouter instance = DemandsRouter._();

  static const String _path = '/demands';
  static const String _name = 'demands';

  String get path => _path;
  String get name => _name;

  GoRoute get route => GoRoute(
        path: _path,
        name: _name,
        // parentNavigatorKey: RouterMixin.parentNavigatorKey,
        pageBuilder: (context, state) => const NoTransitionPage(
          child: DemandsScreen(),
        ),
      );
  void go(BuildContext context) {
    GoRouter.of(context).goNamed(_name);
  }

  void push(BuildContext context) {
    GoRouter.of(context).pushNamed(_name);
  }
}
