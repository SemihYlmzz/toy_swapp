import 'package:auth_repository/auth_repository.dart';
import 'package:consumer_repository/consumer_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../account_initializer/account_initializer.dart';
import '../account_registration/account_registration.dart';
import '../create_toy/create_toy.dart';
import '../demands/demands.dart';
import '../email_verification/email_verification.dart';
import '../forgot_password/forgot_password.dart';
import '../matches/matches.dart';
import '../navigator_bar/navigator_bar.dart';
import '../profile/profile.dart';
import '../sign_in/sign_in.dart';
import '../sign_up/sign_up.dart';

import '../sub_matches/sub_matches.dart';
import '../toys/toys.dart';
import 'router.dart';

class AppRouter {
  factory AppRouter() {
    return instance;
  }

  AppRouter._internal();
  final parentNavigatorKey = GlobalKey<NavigatorState>();
  static final AppRouter instance = AppRouter._internal();

  final List<List<NavigatorBarSubGoRoute>> _navigatorBarSubRoutes = [
    [ToysGoRoute.instance],
    [DemandsGoRoute.instance],
    [MatchesGoRoute.instance, SubMatchesGoRoute.instance],
    [ProfileGoRoute.instance],
  ];

  List<StatefulShellBranch> _createNavigatorBarBranches() =>
      _navigatorBarSubRoutes
          .map((e) => StatefulShellBranch(routes: e))
          .toList();

  List<NavigatorBarSubGoRoute> _createNavigatorBarSubRoutes() =>
      _navigatorBarSubRoutes.expand((e) => e).toList();

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
          NavigatorBarRouter.instance.shellRoute(
            _createNavigatorBarBranches(),
            _createNavigatorBarSubRoutes(),
          ),
          CreateToyGoRoute.instance,
        ],
        redirect: (BuildContext context, GoRouterState state) async {
          final currentAuth = context.read<AuthRepository>().currentAuth;
          final currentConsumer =
              context.read<ConsumerRepository>().currentConsumer;
          // [ClearConsumer] on [SignOut]
          if (currentConsumer.state != ConsumerState.empty &&
              currentAuth.state == AuthState.unAuth) {
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
                return ToysGoRoute.instance.path;
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
            if (currentConsumer.state != ConsumerState.empty ||
                (currentConsumer.state == ConsumerState.empty &&
                    nullablePath != null)) {
              return nullablePath;
            }

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
        ToysGoRoute.instance.path,
        DemandsGoRoute.instance.path,
        CreateToyGoRoute.instance.path,
        MatchesGoRoute.instance.path,
        ProfileGoRoute.instance.path,
        SubMatchesGoRoute.instance.path,
      ].contains(state.matchedLocation);
}
