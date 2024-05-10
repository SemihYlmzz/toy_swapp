import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../terms_acceptance.dart';

class TermsAcceptanceRouter {
  factory TermsAcceptanceRouter() {
    return instance;
  }
  TermsAcceptanceRouter._();
  static final TermsAcceptanceRouter instance = TermsAcceptanceRouter._();

  static const String _path = '/terms_acceptance';
  static const String _name = 'terms_acceptance';

  String get path => _path;
  String get name => _name;

  GoRoute get route => GoRoute(
        path: _path,
        name: _name,
        // parentNavigatorKey: RouterMixin.parentNavigatorKey,
        pageBuilder: (context, state) => const NoTransitionPage(
          child: TermsAcceptanceScreen(),
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
