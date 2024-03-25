import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../auth_sign_in.dart';

class AuthSignInRouter {
  factory AuthSignInRouter() {
    return instance;
  }
  AuthSignInRouter._();
  static final AuthSignInRouter instance = AuthSignInRouter._();

  static const String _path = '/auth_sign_in';
  static const String _name = 'auth_sign_in';

  String get path => _path;
  String get name => _name;

  GoRoute get route => GoRoute(
        path: _path,
        name: _name,
        // parentNavigatorKey: RouterMixin.parentNavigatorKey,
        pageBuilder: (context, state) => const NoTransitionPage(
          child: AuthSignInScreen(),
        ),
      );
  void go(BuildContext context) {
    GoRouter.of(context).goNamed(_name);
  }

  void push(BuildContext context) {
    GoRouter.of(context).pushNamed(_name);
  }
}
