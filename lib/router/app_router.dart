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
          final currentAuth = context.read<AuthRepository>().currentAuth;
          final currentConsumer =
              context.read<ConsumerRepository>().currentConsumer;
          // [ClearConsumer] on [SignOut]
          if (currentConsumer.state != ConsumerState.empty) {
            context.read<ConsumerRepository>().clearCurrentConsumer();
          }
          // if (currentSupport.state != SupportState.empty) {
          // clearSupport();
          // }
          // if (currentAdmin.state != AdminState.empty) {
          // clearAdmin();
          // }
          String? nonVerifiedSignedIn() {
            if (!_inEmailVerificationScreen(state)) {
              return EmailVerificationRouter.instance.path;
            }
            return null;
          }

          String? verifiedSignedInCheckConsumer() {
            String? consumerHasData() {
              if (!_inConsumerScreens(state)) {
                return HomeRouter.instance.path;
              }
              return null;
            }

            String? consumerNeedRegister() {
              if (!_inAccountRegistration(state)) {
                return AccountRegistrationRouter.instance.path;
              }
              return null;
            }

            return switch (currentConsumer.state) {
              ConsumerState.hasData => consumerHasData(),
              ConsumerState.needRegister => consumerNeedRegister(),
              ConsumerState.empty => null,
            };
          }

          String? authNotSignedIn() {
            if (!_inAuthScreen(state)) {
              return SignInRouter.instance.path;
            }
            return null;
          }

          String? authSignedIn() {
            if (!currentAuth.isEmailVerified) {
              return nonVerifiedSignedIn();
            }
            // [VerifiedSignIn]
            final nullablePath = verifiedSignedInCheckConsumer();
            // nullablePath ??= checkSupport();
            // nullablePath ??= checkAdmin();
            if (nullablePath != null) return nullablePath;

            // [VerifiedSignIn] + [NoUser]
            if (!_inAccountInitializer(state)) {
              return AccountInitializerRouter.instance.path;
            }
            return null;
          }

          return switch (currentAuth.state) {
            AuthState.unAuth => authNotSignedIn(),
            AuthState.auth => authSignedIn()
          };
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

  // [AccountInitializerScreen]
  bool _inAccountInitializer(GoRouterState state) => [
        AccountInitializerRouter.instance.path,
      ].contains(state.matchedLocation);

  // [AccountRegistrationScreen]
  bool _inAccountRegistration(GoRouterState state) => [
        AccountRegistrationRouter.instance.path,
      ].contains(state.matchedLocation);

  // [ConsumerScreens]
  bool _inConsumerScreens(GoRouterState state) => [
        HomeRouter.instance.path,
      ].contains(state.matchedLocation);
}
