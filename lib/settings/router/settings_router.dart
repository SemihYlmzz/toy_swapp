import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../settings.dart';

class SettingsRouter {
  factory SettingsRouter() {
    return instance;
  }
  SettingsRouter._();
  static final SettingsRouter instance = SettingsRouter._();

  static const String _path = '/settings';
  static const String _name = 'settings';

  String get path => _path;
  String get name => _name;

  GoRoute get route => GoRoute(
        path: _path,
        name: _name,
        pageBuilder: (context, state) => const MaterialPage(
          child: SettingsScreen(),
        ),
      );
  void go(BuildContext context) {
    GoRouter.of(context).goNamed(_name);
  }

  void push(BuildContext context) {
    GoRouter.of(context).pushNamed(_name);
  }
}
