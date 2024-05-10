import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../support_navigator_bar/support_navigator_bar.dart';
import '../support_profile.dart';

class SupportProfileGoRoute extends SupportNavigatorBarSubGoRoute {
  factory SupportProfileGoRoute() {
    return instance;
  }
  SupportProfileGoRoute._()
      : super(path: _path, name: _name, pageBuilder: _pageBuilder);
  static final SupportProfileGoRoute instance = SupportProfileGoRoute._();

  static const String _path = '/support_profile';
  static const String _name = 'support_profile';

  static GoRouterPageBuilder get _pageBuilder =>
      (context, state) => const NoTransitionPage(
            child: SupportProfileScreen(),
          );

  @override
  PreferredSizeWidget? get appBar => const SupportProfileAppBar();

  void go(BuildContext context) {
    GoRouter.of(context).goNamed(_name);
  }

  void push(BuildContext context) {
    FocusManager.instance.primaryFocus?.unfocus();
    GoRouter.of(context).pushNamed(_name);
  }
}
