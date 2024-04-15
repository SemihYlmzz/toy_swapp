import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../navigator_bar/navigator_bar.dart';
import '../demands.dart';

class DemandsGoRoute extends NavigatorBarSubGoRoute {
  factory DemandsGoRoute() {
    return instance;
  }
  DemandsGoRoute._()
      : super(path: _path, name: _name, pageBuilder: _pageBuilder);
  static final DemandsGoRoute instance = DemandsGoRoute._();

  static const String _path = '/demands';
  static const String _name = 'demands';

  static GoRouterPageBuilder get _pageBuilder =>
      (context, state) => const NoTransitionPage(
            child: DemandsScreen(),
          );

  @override
  PreferredSizeWidget? get appBar => const DemandsAppBar();

  void go(BuildContext context) {
    GoRouter.of(context).goNamed(_name);
  }

  void push(BuildContext context) {
    FocusManager.instance.primaryFocus?.unfocus();
    GoRouter.of(context).pushNamed(_name);
  }
}
