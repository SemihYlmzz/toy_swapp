import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:toy_swapp/auth_sign_in/auth_sign_in.dart';
import 'package:toy_swapp/sign_up/sign_up.dart';

class AppRouter {
  factory AppRouter() {
    return instance;
  }

  AppRouter._internal();
  final parentNavigatorKey = GlobalKey<NavigatorState>();
  static final AppRouter instance = AppRouter._internal();

  static final String signUpPath = SignUpRouter.instance.path;
  static final String authSignInPath = AuthSignInRouter.instance.path;


  GoRouter router(// Stream<dynamic> authStream
          ) =>
      GoRouter(
        initialLocation: AuthSignInRouter.instance.path,
        navigatorKey: parentNavigatorKey,
        routes: [
          AuthSignInRouter.instance.route,
          SignUpRouter.instance.route,
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
