import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../support_navigator_bar/support_navigator_bar.dart';
import '../support_reports.dart';

class SupportReportsGoRoute extends SupportNavigatorBarSubGoRoute {
  factory SupportReportsGoRoute() {
    return instance;
  }
  SupportReportsGoRoute._()
      : super(path: _path, name: _name, pageBuilder: _pageBuilder);
  static final SupportReportsGoRoute instance = SupportReportsGoRoute._();

  static const String _path = '/support_reports';
  static const String _name = 'support_reports';

  static GoRouterPageBuilder get _pageBuilder =>
      (context, state) => const NoTransitionPage(
            child: SupportReportsScreen(),
          );
  @override
  PreferredSizeWidget? get appBar => const SupportReportsAppBar();

  void go(BuildContext context) {
    GoRouter.of(context).goNamed(_name);
  }

  void push(BuildContext context) {
    FocusManager.instance.primaryFocus?.unfocus();
    GoRouter.of(context).pushNamed(_name);
  }
}
