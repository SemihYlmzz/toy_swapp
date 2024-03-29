import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../example_settings.dart';

class ExampleSettingsRouter {
  factory ExampleSettingsRouter() {
    return instance;
  }
  ExampleSettingsRouter._();
  static final ExampleSettingsRouter instance = ExampleSettingsRouter._();

  static const String _path = '/example_settings';
  static const String _name = 'example_settings';

  String get path => _path;
  String get name => _name;

  GoRoute get route => GoRoute(
        path: _path,
        name: _name,
        // parentNavigatorKey: RouterMixin.parentNavigatorKey,
        pageBuilder: (context, state) => const NoTransitionPage(
          child: ExampleSettingsScreen(),
        ),
      );
  void go(BuildContext context) {
    GoRouter.of(context).goNamed(_name);
  }

  void push(BuildContext context) {
    GoRouter.of(context).pushNamed(_name);
  }
}
