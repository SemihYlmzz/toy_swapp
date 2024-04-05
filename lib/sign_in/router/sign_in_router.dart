import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../router/app_router.dart';
import '../sign_in.dart';

class SignInRouter {
  factory SignInRouter() {
    return instance;
  }
  SignInRouter._();
  static final SignInRouter instance = SignInRouter._();

  static const String _path = '/sign_in';
  static const String _name = 'sign_in';

  String get path => _path;
  String get name => _name;

  GoRoute get route => GoRoute(
        path: _path,
        name: _name,
        parentNavigatorKey: AppRouter.instance.parentNavigatorKey,
        pageBuilder: (context, state) => const NoTransitionPage(
          child: SignInScreen(),
        ),
      );
  void go(BuildContext context) {
    GoRouter.of(context).goNamed(_name);
  }

  void push(BuildContext context) {
    GoRouter.of(context).pushNamed(_name);
  }
}
