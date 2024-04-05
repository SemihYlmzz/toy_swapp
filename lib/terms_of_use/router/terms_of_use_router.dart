import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../terms_of_use.dart';

class TermsOfUseRouter {
  factory TermsOfUseRouter() {
    return instance;
  }
  TermsOfUseRouter._();
  static final TermsOfUseRouter instance = TermsOfUseRouter._();

  static const String _path = '/terms_of_use';
  static const String _name = 'terms_of_use';

  String get path => _path;
  String get name => _name;

  GoRoute get route => GoRoute(
        path: _path,
        name: _name,
        // parentNavigatorKey: RouterMixin.parentNavigatorKey,
        pageBuilder: (context, state) => NoTransitionPage(
          child: TermsOfUseScreen(
            lastUpdatedTermsDate: DateTime(2025, 02, 02),
          ),
        ),
      );
  void go(BuildContext context) {
    GoRouter.of(context).goNamed(_name);
  }

  void push(BuildContext context) {
    GoRouter.of(context).pushNamed(_name);
  }
}
