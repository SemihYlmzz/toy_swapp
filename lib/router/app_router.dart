import 'package:auth_repository/auth_repository.dart';
import 'package:consumer_repository/consumer_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:toy_repository/toy_repository.dart';
import 'package:toy_swapp/account_settings/router/router.dart';
import 'package:toy_swapp/liked_toys/liked_toys.dart';
import 'package:toy_swapp/toy_detail/toy_detail.dart';

import '../account_initializer/account_initializer.dart';
import '../account_registration/account_registration.dart';
import '../consumer_data_calibration/consumer_data_calibration.dart';
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
          ConsumerDataCalibrationRouter.instance.route,
          NavigatorBarRouter.instance.shellRoute(
            _createStatefulShelBranches(_navigatorBarMainRoutes),
            NavigatorBarRouter.instance.getSubRoutes(_navigatorBarMainRoutes),
          ),
          AccountSettingsRouter.instance.route,
          ToyDetailRouter.instance.route,
          LikedToysRouter.instance.route,
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
          if (currentConsumer != null &&
              currentAuth.state == AuthState.unAuth) {
            context.read<ConsumerRepository>().clearCurrentConsumer();
            context.read<ToyRepository>().clearOwnedToys();
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
              // if (currentAuth.email != currentConsumer?.email) {
              //   return ConsumerDataCalibrationRouter.instance.path;
              // }

              print(10);
              if (!_inConsumerScreens(state)) {
                print(11);
                return ToysGoRoute.instance.path;
              }
              print(12);
              return null;
            }

            if (currentConsumer != null) {
              print(13);
              return consumerHasData();
            }
            print(12);
            return null;
          }

          String? authNotSignedIn() {
            if (!_inAuthScreen(state)) {
              print(3);
              return SignInRouter.instance.path;
            }
            print(4);
            return null;
          }

          String? authSignedIn() {
            print(2);
            if (!currentAuth.isEmailVerified) {
              print(5);
              return nonVerifiedSignedIn();
            }
            print(6);
            // [VerifiedSignIn]
            final nullablePath = verifiedSignedInCheckConsumer();
            // nullablePath ??= checkSupport();
            // nullablePath ??= checkAdmin();
            if (currentConsumer != null ||
                (currentConsumer == null && nullablePath != null)) {
              print(7);
              return nullablePath;
            }

            // [VerifiedSignIn] + [NoUser]
            if (!_inAccountInitializer(state)) {
              print(8);
              return AccountInitializerRouter.instance.path;
            }
            print(9);
            return null;
          }

          if (_inNoRuleScreens(state)) {
            print(1);
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
  // [AccountInitializerScreen]
  bool _inAccountRegistration(GoRouterState state) => [
        AccountRegistrationRouter.instance.name,
      ].contains(state.topRoute!.name);
  // [ConsumerScreens]
  bool _inConsumerScreens(GoRouterState state) => [
        ToysGoRoute.instance.name,
        DemandsGoRoute.instance.name,
        MatchesGoRoute.instance.name,
        ProfileGoRoute.instance.name,
        SubMatchesGoRoute.instance.name,
        AccountSettingsRouter.instance.name,
        ConsumerDataCalibrationRouter.instance.name,
        ToyDetailRouter.instance.name,
        LikedToysRouter.instance.name,
      ].contains(state.topRoute!.name);

  bool _inNoRuleScreens(GoRouterState state) => [
        SettingsRouter.instance.name,
        TermsAcceptanceRouter.instance.name,
        PermissionsRouter.instance.name,
      ].contains(state.topRoute!.name);
}
