import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../email_verification.dart';

class EmailVerificationRouter {
  factory EmailVerificationRouter() {
    return instance;
  }
  EmailVerificationRouter._();
  static final EmailVerificationRouter instance = EmailVerificationRouter._();

  static const String _path = '/email_verification';
  static const String _name = 'email_verification';

  String get path => _path;
  String get name => _name;

  GoRoute get route => GoRoute(
        path: _path,
        name: _name,
        // parentNavigatorKey: RouterMixin.parentNavigatorKey,
        pageBuilder: (context, state) => const NoTransitionPage(
          child: EmailVerificationScreen(),
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
