import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../create_toy.dart';

class CreateToyRouter {
  factory CreateToyRouter() {
    return instance;
  }
  CreateToyRouter._();
  static final CreateToyRouter instance = CreateToyRouter._();

  static const String _path = '/create_toy';
  static const String _name = 'create_toy';

  String get path => _path;
  String get name => _name;

  GoRoute get route => GoRoute(
        path: _path,
        name: _name,
        // parentNavigatorKey: RouterMixin.parentNavigatorKey,
        pageBuilder: (context, state) => const NoTransitionPage(
          child: CreateToyScreen(),
        ),
      );
  void go(BuildContext context) {
    GoRouter.of(context).goNamed(_name);
  }

  void push(BuildContext context) {
    GoRouter.of(context).pushNamed(_name);
  }
}
