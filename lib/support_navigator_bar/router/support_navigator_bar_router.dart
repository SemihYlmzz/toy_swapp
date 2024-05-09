import 'package:go_router/go_router.dart';
import '../support_navigator_bar.dart';

class SupportNavigatorBarRouter {
  factory SupportNavigatorBarRouter() {
    return instance;
  }
  SupportNavigatorBarRouter._();
  static final SupportNavigatorBarRouter instance =
      SupportNavigatorBarRouter._();

  StatefulShellRoute shellRoute(
    List<StatefulShellBranch> branches,
    List<SupportNavigatorBarSubGoRoute> routes,
  ) =>
      StatefulShellRoute.indexedStack(
        pageBuilder: (context, state, navigationShell) => NoTransitionPage(
          child: SupportNavigatorBarScreen(
            navigationShell: navigationShell,
            goRouterState: state,
            subRoutes: routes,
          ),
        ),
        branches: branches,
      );

  List<SupportNavigatorBarSubGoRoute> getSubRoutes(
    List<List<SupportNavigatorBarSubGoRoute>> routes,
  ) {
    final subRoutes = <SupportNavigatorBarSubGoRoute>[];

    void flattenRoutes(List<SupportNavigatorBarSubGoRoute> currentRoutes) {
      subRoutes.addAll(currentRoutes);
      final nextTierRoutes =
          currentRoutes.expand((route) => route.routes).toList();
      if (nextTierRoutes.isNotEmpty) {
        flattenRoutes(nextTierRoutes);
      }
    }

    flattenRoutes(routes.expand((route) => route).toList());

    return subRoutes;
  }
}
