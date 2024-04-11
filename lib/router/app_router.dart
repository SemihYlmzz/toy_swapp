import 'package:auth_repository/auth_repository.dart';
import 'package:consumer_repository/consumer_repository.dart';
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

  GoRouter router(Stream<dynamic> authStream, Stream<dynamic> userStream) =>
      GoRouter(
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
          final currentConsumer =
              context.read<ConsumerRepository>().currentConsumer;

          final isAuthSignedIn = authState != Auth.empty();
          final isEmailVerified = authState.isEmailVerified;
          final hasConsumer = currentConsumer != Consumer.empty();
          if (!isAuthSignedIn && hasConsumer) {
            context.read<ConsumerRepository>().clearCurrentConsumer();
          }

          //  [NotSignedIn]
          if (!isAuthSignedIn) {
            // [Not In AuthScreen] -> Go SignIn
            if (!_inAuthScreen(state)) {
              return SignInRouter.instance.path;
            }
            return null;
          }

          // [SignedIn] + [EmailNotVerified]
          if (!isEmailVerified) {
            // [Not In EmailVerificationScreen] -> Go EmailVerification
            if (!_inEmailVerificationScreen(state)) {
              return EmailVerificationRouter.instance.path;
            }
            return null;
          }
          // [SignedIn] + [EmailVerified]
          // [NoConsumer]
          if (!hasConsumer) {
            // [Not In UserScreens] -> Go AccountInitializer
            if (!_inUserScreens(state)) {
              return AccountInitializerRouter.instance.path;
            }
            return null;
          }

          // [SignedIn] + [EmailVerified] + [HasConsumer]
          if (isAuthSignedIn && isEmailVerified && hasConsumer) {
            // [Not In ConsumerScreens] -> Go Consumer Screens
            if (!_inConsumerScreens(state)) {
              return HomeRouter.instance.path;
            }
            return null;
          }
          return null;
        },
        refreshListenable: GoRouterRefreshStream(
          stream1: authStream,
          stream2: userStream,
        ),
      );

  // [AuthScreens]
  bool _inAuthScreen(GoRouterState state) => [
        SignInRouter.instance.path,
        SignUpRouter.instance.path,
        ForgotPasswordRouter.instance.path,
      ].contains(state.matchedLocation);

  // [EmailVerificationScreen]
  bool _inEmailVerificationScreen(GoRouterState state) => [
        EmailVerificationRouter.instance.path,
      ].contains(state.matchedLocation);

  // [UserScreens]
  bool _inUserScreens(GoRouterState state) => [
        AccountInitializerRouter.instance.path,
        AccountRegistrationRouter.instance.path,
      ].contains(state.matchedLocation);

  // [ConsumerScreens]
  bool _inConsumerScreens(GoRouterState state) => [
        HomeRouter.instance.path,
      ].contains(state.matchedLocation);
}
