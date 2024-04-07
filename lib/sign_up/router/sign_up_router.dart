import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../sign_up.dart';

class SignUpRouter {
  factory SignUpRouter() {
    return instance;
  }
  SignUpRouter._();
  static final SignUpRouter instance = SignUpRouter._();

  static const String _path = '/sign_up';
  static const String _name = 'sign_up';

  String get path => _path;
  String get name => _name;

  GoRoute get route => GoRoute(
        path: _path,
        name: _name,
        // parentNavigatorKey: RouterMixin.parentNavigatorKey,
        pageBuilder: (context, state) => const MaterialPage(
          child: SignUpScreen(),
        ),
      );

  void go(BuildContext context) {
    GoRouter.of(context).goNamed(_name);
  }

  void push(BuildContext context) {
    GoRouter.of(context).pushNamed(_name);
  }
}
