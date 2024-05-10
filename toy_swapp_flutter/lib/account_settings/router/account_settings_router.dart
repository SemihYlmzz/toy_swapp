import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../account_settings.dart';

class AccountSettingsRouter {
  factory AccountSettingsRouter() {
    return instance;
  }
  AccountSettingsRouter._();
  static final AccountSettingsRouter instance = AccountSettingsRouter._();

  static const String _path = '/account_settings';
  static const String _name = 'account_settings';

  String get path => _path;
  String get name => _name;

  GoRoute get route => GoRoute(
        path: _path,
        name: _name,
        // parentNavigatorKey: RouterMixin.parentNavigatorKey,
        pageBuilder: (context, state) => const MaterialPage(
          child: AccountSettingsScreen(),
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
