import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import '../auth_sign_in/auth_sign_in.dart';

class AppRouter {
  factory AppRouter() {
    return instance;
  }

  AppRouter._internal();
  static final AppRouter instance = AppRouter._internal();

  final GlobalKey<NavigatorState> parentNavigatorKey =
      GlobalKey<NavigatorState>();

  GoRouter router(// Stream<dynamic> authStream
          ) =>
      GoRouter(
        initialLocation: AuthSignInRouter.instance.path,
        navigatorKey: parentNavigatorKey,
        routes: [
          AuthSignInRouter.instance.route,
          // AuthSignUpRouter.instance.route,
          // UserInitializerRouter.instance.route,
        ],
        redirect: (BuildContext context, GoRouterState state) async {
          return null;
        },
        // refreshListenable: GoRouterRefreshStream(
        // stream: authStream,
        // ),
      );
}
