import 'package:auth_repository/auth_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:go_router/go_router.dart';
import '../account_initializer/account_initializer.dart';
import '../account_registration/account_registration.dart';
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
          AccountRegistrationRouter.instance.route,
          AccountInitializerRouter.instance.route,
          HomeRouter.instance.route,
        ],
        redirect: (BuildContext context, GoRouterState state) async {
          final authState = context.read<AuthRepository>().currentAuth;

          final isAuthSignedIn = authState != Auth.empty();
          final isEmailVerified = authState.isEmailVerified;

          // Spot User if in [AuthScreen]
          final isAuthScreen = [
            SignInRouter.instance.path,
            SignUpRouter.instance.path,
            ForgotPasswordRouter.instance.path,
          ].contains(state.matchedLocation);

          // Spot User if in [EmailVerificationScreen]
          final isEmailVerificationScreen = [
            EmailVerificationRouter.instance.path,
          ].contains(state.matchedLocation);

          // [SignedIn], [EmailVerified] but in [EmailVerificationScreen]
          if (isAuthSignedIn && isEmailVerified && isEmailVerificationScreen) {
            print('1');
            return AccountInitializerRouter.instance.path;
          }
          // Auth [SignedIn] but [EmailNotVerified]
          if (isAuthSignedIn && !isEmailVerified) {
            return EmailVerificationRouter.instance.path;
          }
          // Auth [SignedIn] but still in [AuthScreen]
          if (isAuthSignedIn && isAuthScreen) {
            return AccountRegistrationRouter.instance.path;
            // Todo: open
            // To detect, read and navigate [Consumer], [Support] or [Admin]
            //return AccountInitializerRouter.instance.path;
          }

          // Auth [NotSignedIn] but not in [AuthScreen]
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
