import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../account_initializer.dart';

class AccountInitializerRouter {
  factory AccountInitializerRouter() {
    return instance;
  }
  AccountInitializerRouter._();
  static final AccountInitializerRouter instance = AccountInitializerRouter._();

  static const String _path = '/account_initializer';
  static const String _name = 'account_initializer';

  String get path => _path;
  String get name => _name;

  GoRoute get route => GoRoute(
        path: _path,
        name: _name,
        // parentNavigatorKey: RouterMixin.parentNavigatorKey,
        pageBuilder: (context, state) => const NoTransitionPage(
          child: AccountInitializerScreen(),
        ),
      );
  void go(BuildContext context) {
    GoRouter.of(context).goNamed(_name);
  }

  void push(BuildContext context) {
    FocusManager.instance.primaryFocus?.unfocus();
    GoRouter.of(context).pushNamed(_name);
  }

  String? validateNavigation({
    required bool isSignedIn,
    required bool isEmailVerified,
    required bool isConsumerEmpty,
    // required bool isSupportEmpty,
    // required bool isAdminEmpty,
  }) {
    if (!isSignedIn) {
      return null;
    }
    if (isEmailVerified) {
      return null;
    }

    if (!isConsumerEmpty) {
      return null;
    }
    // if (!isSupportEmpty) {
    //   return null;
    // }
    // if (!isAdminEmpty) {
    //   return null;
    // }
    return _path;
  }
}
