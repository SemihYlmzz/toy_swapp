import 'package:go_router/go_router.dart';
import '../navigator_bar.dart';

class NavigatorBarRouter {
  factory NavigatorBarRouter() {
    return instance;
  }
  NavigatorBarRouter._();
  static final NavigatorBarRouter instance = NavigatorBarRouter._();

  StatefulShellRoute shellRoute(
    List<StatefulShellBranch> branches,
    List<NavigatorBarSubGoRoute> routes,
  ) =>
      StatefulShellRoute.indexedStack(
        pageBuilder: (context, state, navigationShell) => NoTransitionPage(
          child: NavigatorBarScreen(
            navigationShell: navigationShell,
            goRouterState: state,
            subRoutes: routes,
          ),
        ),
        branches: branches,
      );
}
