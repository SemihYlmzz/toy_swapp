import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:toy_swapp/sub_matches/sub_matches.dart';
import '../../navigator_bar/navigator_bar.dart';
import '../matches.dart';

class MatchesGoRoute extends NavigatorBarSubGoRoute {
  factory MatchesGoRoute() {
    return instance;
  }
  MatchesGoRoute._()
      : super(path: _path, name: _name, pageBuilder: _pageBuilder);
  static final MatchesGoRoute instance = MatchesGoRoute._();

  static const String _path = '/matches';
  static const String _name = 'matches';

  static GoRouterPageBuilder get _pageBuilder =>
      (context, state) => const NoTransitionPage(
            child: MatchesScreen(),
          );

  @override
  PreferredSizeWidget? get appBar => const MatchesAppBar();

  @override
  List<NavigatorBarSubGoRoute> get routes => [
        SubMatchesGoRoute.instance,
      ];

  void go(BuildContext context) {
    GoRouter.of(context).goNamed(_name);
  }

  void push(BuildContext context) {
    GoRouter.of(context).pushNamed(_name);
  }
}
