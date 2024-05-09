import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../support_navigator_bar/support_navigator_bar.dart';
import '../support_toy_acceptance.dart';

class SupportToyAcceptanceGoRoute extends SupportNavigatorBarSubGoRoute {
  factory SupportToyAcceptanceGoRoute() {
    return instance;
  }
  SupportToyAcceptanceGoRoute._()
      : super(path: _path, name: _name, pageBuilder: _pageBuilder);
  static final SupportToyAcceptanceGoRoute instance =
      SupportToyAcceptanceGoRoute._();

  static const String _path = '/support_toy_acceptance';
  static const String _name = 'support_toy_acceptance';

  static GoRouterPageBuilder get _pageBuilder =>
      (context, state) => const NoTransitionPage(
            child: SupportToyAcceptanceScreen(),
          );

  @override
  PreferredSizeWidget? get appBar => const SupportToyAcceptanceAppBar();
  
  void go(BuildContext context) {
    GoRouter.of(context).goNamed(_name);
  }

  void push(BuildContext context) {
    FocusManager.instance.primaryFocus?.unfocus();
    GoRouter.of(context).pushNamed(_name);
  }
}
