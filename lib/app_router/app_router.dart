import 'package:auth_repository/auth_repository.dart';
import 'package:consumer_repository/consumer_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:support_repository/support_repository.dart';
import 'package:toy_repository/toy_repository.dart';
import 'package:toy_swapp/account_settings/router/router.dart';
import 'package:toy_swapp/liked_toys/liked_toys.dart';
import 'package:toy_swapp/support_toy_acceptance/support_toy_acceptance.dart';
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
import '../support_navigator_bar/support_navigator_bar.dart';
import '../support_profile/support_profile.dart';
import '../support_reports/support_reports.dart';
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
  final List<List<SupportNavigatorBarSubGoRoute>>
      _supportNavigatorBarMainRoutes = [
    [SupportToyAcceptanceGoRoute.instance],
    [SupportReportsGoRoute.instance],
    [SupportProfileGoRoute.instance],
  ];

  List<StatefulShellBranch> _createStatefulShelBranches(
    List<List<GoRoute>> routes,
  ) {
    return routes.map((e) => StatefulShellBranch(routes: e)).toList();
  }

  GoRouter router(
    Stream<dynamic> authStream,
    Stream<dynamic> userStream,
    Stream<dynamic> supportStream,
  ) =>
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
          // [SignedIn] + [Verified] + User: [SupportHasData]
          SupportNavigatorBarRouter.instance.shellRoute(
            _createStatefulShelBranches(_supportNavigatorBarMainRoutes),
            SupportNavigatorBarRouter.instance.getSubRoutes(
              _supportNavigatorBarMainRoutes,
            ),
          ),
          // [NoRule]
          SettingsRouter.instance.route,
          TermsAcceptanceRouter.instance.route,
          PermissionsRouter.instance.route,
        ],
        redirect: (BuildContext context, GoRouterState state) async {
          // Repositories
          final authRepository = context.read<AuthRepository>();
          final consumerRepository = context.read<ConsumerRepository>();
          final toyRepository = context.read<ToyRepository>();
          final supportRepository = context.read<SupportRepository>();

          // Current Values
          final currentAuth = authRepository.currentAuth;
          final currentConsumer = consumerRepository.currentConsumer;
          final currentSupport = supportRepository.currentSupport;

          //  on [SignOut]
          if (currentAuth.state == AuthState.unAuth) {
            // [ClearConsumer] if [ConsumerHasData]
            if (currentConsumer != null) {
              consumerRepository.sinkCurrentConsumer(null);
              toyRepository.clearOwnedToys();
            }
          }

          String? nonVerifiedSignedIn() {
            if (!_inEmailVerificationScreen(state)) {
              return EmailVerificationRouter.instance.path;
            }
            return null;
          }

          String? verifiedSignedInCheckSupport() {
            String? supportHasData() {
              if (!_inSupportScreens(state)) {
                return SupportToyAcceptanceGoRoute.instance.path;
              }
              return null;
            }

            if (currentSupport != null) {
              return supportHasData();
            }
            return null;
          }

          String? verifiedSignedInCheckConsumer() {
            String? consumerHasData() {
              if (currentAuth.email != currentConsumer?.email) {
                return ConsumerDataCalibrationRouter.instance.path;
              }

              if (!_inConsumerScreens(state)) {
                return ToysGoRoute.instance.path;
              }
              return null;
            }

            if (currentConsumer != null) {
              return consumerHasData();
            }
            return null;
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
            var nullablePath = verifiedSignedInCheckConsumer();
            nullablePath ??= verifiedSignedInCheckSupport();
            // nullablePath ??= checkAdmin();

            if (currentConsumer != null || currentSupport != null) {
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
          stream3: supportStream,
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

  // [SupportScreens]
  bool _inSupportScreens(GoRouterState state) => [
        SupportToyAcceptanceGoRoute.instance.name,
        SupportProfileGoRoute.instance.name,
        SupportReportsGoRoute.instance.name,
      ].contains(state.topRoute!.name);

  bool _inNoRuleScreens(GoRouterState state) => [
        SettingsRouter.instance.name,
        TermsAcceptanceRouter.instance.name,
        PermissionsRouter.instance.name,
      ].contains(state.topRoute!.name);
}
