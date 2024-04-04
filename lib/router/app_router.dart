import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:go_router/go_router.dart';
import 'package:toy_swapp/app/app.dart';
import 'package:toy_swapp/auth_sign_in/auth_sign_in.dart';
import 'package:toy_swapp/sign_up/sign_up.dart';
import 'package:toy_swapp/terms_of_use/terms_of_use.dart';

import 'router.dart';

class AppRouter {
  factory AppRouter() {
    return instance;
  }

  AppRouter._internal();
  final parentNavigatorKey = GlobalKey<NavigatorState>();
  static final AppRouter instance = AppRouter._internal();

  static final String signUpPath = SignUpRouter.instance.path;
  static final String authSignInPath = AuthSignInRouter.instance.path;

  GoRouter router(Stream<dynamic> authStream) => GoRouter(
        initialLocation: AuthSignInRouter.instance.path,
        navigatorKey: parentNavigatorKey,
        routes: [
          AuthSignInRouter.instance.route,
          SignUpRouter.instance.route,
          TermsOfUseRouter.instance.route,
          // AuthSignUpRouter.instance.route,
          // UserInitializerRouter.instance.route,
        ],
        redirect: (BuildContext context, GoRouterState state) async {
          final isTermsOfUseAccepted = context
              .read<AppBloc>()
              .state
              .currentUserPreferences!
              .isTermsOfUseAccepted;

          if (!isTermsOfUseAccepted) {
            return TermsOfUseRouter.instance.path;
          }
          return null;
        },
        refreshListenable: GoRouterRefreshStream(
          stream: authStream,
        ),
      );
}
