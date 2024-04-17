import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../permissions.dart';

class PermissionsRouter {
  factory PermissionsRouter() {
    return instance;
  }
  PermissionsRouter._();
  static final PermissionsRouter instance = PermissionsRouter._();

  static const String _path = '/permissions';
  static const String _name = 'permissions';

  String get path => _path;
  String get name => _name;

  GoRoute get route => GoRoute(
        path: _path,
        name: _name,
        // parentNavigatorKey: RouterMixin.parentNavigatorKey,
        pageBuilder: (context, state) => const MaterialPage(
          child: PermissionsScreen(),
        ),
      );
  void go(BuildContext context) {
    GoRouter.of(context).goNamed(_name);
  }

  void push(BuildContext context) {
    FocusManager.instance.primaryFocus?.unfocus();
    GoRouter.of(context).pushNamed(_name);
  }
}
