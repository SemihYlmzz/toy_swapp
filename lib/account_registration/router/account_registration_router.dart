import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../account_registration.dart';

class AccountRegistrationRouter {
  factory AccountRegistrationRouter() {
    return instance;
  }
  AccountRegistrationRouter._();
  static final AccountRegistrationRouter instance =
      AccountRegistrationRouter._();

  static const String _path = '/account_registration';
  static const String _name = 'account_registration';

  String get path => _path;
  String get name => _name;

  GoRoute get route => GoRoute(
        path: _path,
        name: _name,
        // parentNavigatorKey: RouterMixin.parentNavigatorKey,
        pageBuilder: (context, state) => const NoTransitionPage(
          child: AccountRegistrationScreen(),
        ),
      );
  void go(BuildContext context) {
    GoRouter.of(context).goNamed(_name);
  }

  void push(BuildContext context) {
    GoRouter.of(context).pushNamed(_name);
  }
}
