import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../forgot_password.dart';

class ForgotPasswordRouter {
  factory ForgotPasswordRouter() {
    return instance;
  }
  ForgotPasswordRouter._();
  static final ForgotPasswordRouter instance = ForgotPasswordRouter._();

  static const String _path = '/forgot_password';
  static const String _name = 'forgot_password';

  String get path => _path;
  String get name => _name;

  GoRoute get route => GoRoute(
        path: _path,
        name: _name,
        // parentNavigatorKey: RouterMixin.parentNavigatorKey,
        pageBuilder: (context, state) => const MaterialPage(
          child: ForgotPasswordScreen(),
        ),
      );
  void go(BuildContext context) {
    GoRouter.of(context).goNamed(_name);
  }

  void push(BuildContext context) {
    GoRouter.of(context).pushNamed(_name);
  }
}
