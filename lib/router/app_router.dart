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
import '../permissions/permissions.dart';
import '../profile/profile.dart';
import '../settings/settings.dart';
import '../sign_in/sign_in.dart';
import '../sign_up/sign_up.dart';
import '../sub_matches/sub_matches.dart';
import '../terms_acceptance/terms_acceptance.dart';
import '../toys/toys.dart';
import 'router.dart';

class AppRouter {
  factory AppRouter() {
    return instance;
  }

  AppRouter._internal();
  final parentNavigatorKey = GlobalKey<NavigatorState>();
  static final AppRouter instance = AppRouter._internal();

  final List<List<NavigatorBarSubGoRoute>> _navigatorBarMainRoutes = [
    [ToysGoRoute.instance],
    [DemandsGoRoute.instance],
    [MatchesGoRoute.instance],
    [ProfileGoRoute.instance],
  ];

  List<StatefulShellBranch> _createStatefulShelBranches(
    List<List<GoRoute>> routes,
  ) {
    return routes.map((e) => StatefulShellBranch(routes: e)).toList();
  }

  GoRouter router(Stream<dynamic> authStream, Stream<dynamic> userStream) =>
      GoRouter(
        debugLogDiagnostics: true,
        initialLocation: TermsAcceptanceRouter.instance.path,
        navigatorKey: parentNavigatorKey,
        routes: [
          // [NotSignedIn]
          SignInRouter.instance.route,
          SignUpRouter.instance.route,
          ForgotPasswordRouter.instance.route,
          // [SignedIn] + [NotVerified]
          EmailVerificationRouter.instance.route,
          // [SignedIn] + [Verified] + User: [NotInitialized]
          AccountInitializerRouter.instance.route,
          // [SignedIn] + [Verified] + User: [NotExist]
          AccountRegistrationRouter.instance.route,
          // [SignedIn] + [Verified] + User: [ConsumerHasData]
          NavigatorBarRouter.instance.shellRoute(
            _createStatefulShelBranches(_navigatorBarMainRoutes),
            NavigatorBarRouter.instance.getSubRoutes(_navigatorBarMainRoutes),
          ),
          CreateToyGoRoute.instance,
          // [NoRule]
          SettingsRouter.instance.route,
          TermsAcceptanceRouter.instance.route,
          PermissionsRouter.instance.route,
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

          if (_inNoRuleScreens(state)) {
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
        SignInRouter.instance.name,
        SignUpRouter.instance.name,
        ForgotPasswordRouter.instance.name,
      ].contains(state.topRoute!.name);

  // [EmailVerificationScreen]
  bool _inEmailVerificationScreen(GoRouterState state) => [
        EmailVerificationRouter.instance.name,
      ].contains(state.topRoute!.name);

  // [AccountInitializerScreen]
  bool _inAccountInitializer(GoRouterState state) => [
        AccountInitializerRouter.instance.name,
      ].contains(state.topRoute!.name);

  // [AccountRegistrationScreen]
  bool _inAccountRegistration(GoRouterState state) => [
        AccountRegistrationRouter.instance.name,
      ].contains(state.topRoute!.name);
  // [ConsumerScreens]
  bool _inConsumerScreens(GoRouterState state) => [
        ToysGoRoute.instance.name,
        DemandsGoRoute.instance.name,
        CreateToyGoRoute.instance.name,
        MatchesGoRoute.instance.name,
        ProfileGoRoute.instance.name,
        SubMatchesGoRoute.instance.name,
      ].contains(state.topRoute!.name);
  bool _inNoRuleScreens(GoRouterState state) => [
        SettingsRouter.instance.name,
        TermsAcceptanceRouter.instance.name,
        PermissionsRouter.instance.name,
      ].contains(state.topRoute!.name);
}
