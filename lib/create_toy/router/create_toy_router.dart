import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../navigator_bar/navigator_bar.dart';
import '../create_toy.dart';

class CreateToyGoRoute extends NavigatorBarSubGoRoute {
  factory CreateToyGoRoute() {
    return instance;
  }
  CreateToyGoRoute._()
      : super(path: _path, name: _name, pageBuilder: _pageBuilder);
  static final CreateToyGoRoute instance = CreateToyGoRoute._();

  static const String _path = '/create_toy';
  static const String _name = 'create_toy';

  static GoRouterPageBuilder get _pageBuilder =>
      (context, state) => const NoTransitionPage(
            child: CreateToyScreen(),
          );

  @override
  PreferredSizeWidget? get appBar => const CreateToyAppBar();

  void go(BuildContext context) {
    GoRouter.of(context).goNamed(_name);
  }

  void push(BuildContext context) {
    GoRouter.of(context).pushNamed(_name);
  }
}
