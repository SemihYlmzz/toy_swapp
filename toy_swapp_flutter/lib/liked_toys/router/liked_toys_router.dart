import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../liked_toys.dart';

class LikedToysRouter {
  factory LikedToysRouter() {
    return instance;
  }
  LikedToysRouter._();
  static final LikedToysRouter instance = LikedToysRouter._();

  static const String _path = '/liked_toys';
  static const String _name = 'liked_toys';

  String get path => _path;
  String get name => _name;

  GoRoute get route => GoRoute(
        path: _path,
        name: _name,
        // parentNavigatorKey: RouterMixin.parentNavigatorKey,
        pageBuilder: (context, state) => const MaterialPage(
          child: LikedToysScreen(),
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
