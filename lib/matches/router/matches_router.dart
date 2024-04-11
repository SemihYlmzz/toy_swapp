import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../matches.dart';

class MatchesRouter {
  factory MatchesRouter() {
    return instance;
  }
  MatchesRouter._();
  static final MatchesRouter instance = MatchesRouter._();

  static const String _path = '/matches';
  static const String _name = 'matches';

  String get path => _path;
  String get name => _name;

  GoRoute get route => GoRoute(
        path: _path,
        name: _name,
        // parentNavigatorKey: RouterMixin.parentNavigatorKey,
        pageBuilder: (context, state) => const NoTransitionPage(
          child: MatchesScreen(),
        ),
      );
  void go(BuildContext context) {
    GoRouter.of(context).goNamed(_name);
  }

  void push(BuildContext context) {
    GoRouter.of(context).pushNamed(_name);
  }
}
