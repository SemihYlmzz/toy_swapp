import 'package:auth_repository/auth_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:go_router/go_router.dart';
import '../email_verification/email_verification.dart';
import '../forgot_password/forgot_password.dart';
import '../home/home.dart';
import '../sign_in/sign_in.dart';
import '../sign_up/sign_up.dart';

import 'router.dart';

class AppRouter {
  factory AppRouter() {
    return instance;
  }

  AppRouter._internal();
  final parentNavigatorKey = GlobalKey<NavigatorState>();
  static final AppRouter instance = AppRouter._internal();

  GoRouter router(Stream<dynamic> authStream) => GoRouter(
        initialLocation: SignInRouter.instance.path,
        navigatorKey: parentNavigatorKey,
        routes: [
          SignInRouter.instance.route,
          SignUpRouter.instance.route,
          ForgotPasswordRouter.instance.route,
          EmailVerificationRouter.instance.route,
          HomeRouter.instance.route,
        ],
        redirect: (BuildContext context, GoRouterState state) async {
          final authRepository = context.read<AuthRepository>();
          final isAuthSignedIn = authRepository.isSignedIn();
          final isEmailVerified = authRepository.isEmailVerified();

          // Spot User if in [Auth Screen]
          final isAuthScreen = [
            SignInRouter.instance.path,
            SignUpRouter.instance.path,
            ForgotPasswordRouter.instance.path,
          ].contains(state.matchedLocation);

          // Auth [SignedIn] but [Email Not Verified]
          if (isAuthSignedIn && !isEmailVerified!) {
            return EmailVerificationRouter.instance.path;
          }
          // Auth [SignedIn] but still in [Auth Screen]
          if (isAuthSignedIn && isAuthScreen) {
            return HomeRouter.instance.path;
          }

          // Auth [Not SignedIn] but not in [Auth Screen]
          if (!isAuthScreen && !isAuthSignedIn) {
            return SignInRouter.instance.path;
          }

          return null;
        },
        refreshListenable: GoRouterRefreshStream(
          stream: authStream,
        ),
      );
}
