import 'package:current_user_preferences_repository/current_user_preferences_repository_api.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:toy_swapp/app/view/app_screen.dart';
import 'package:toy_swapp/initializers/initializers.dart';
import 'package:toy_swapp/l10n/l10n.dart';
import 'package:toy_swapp/router/app_router.dart';
import 'package:toy_swapp/startup/startup.dart';

import 'app/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final initializeConfigs = InitializeConfigs();
  final initializeLocalDatabaseApis = InitializeLocalDatabaseApis();
  final initializeLoggers = InitializeLoggers();
  const localizationsDelegates = [
    AppLocalizations.delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  const supportedLocales = AppLocalizations.supportedLocales;
  final appRouter = AppRouter.instance.router();

  Widget appScreen(LocalDatabaseApis localDatabase) => AppScreen(
        localizationsDelegates: localizationsDelegates,
        supportedLocales: supportedLocales,
        appRouter: appRouter,
        currentUserPreferencesRepository: CurrentUserPreferencesRepository(
          localDatabaseApi: localDatabase.sharedPreferencesApi,
        ),
      );

  runApp(
    StartupScreen(
      initializeConfigs: initializeConfigs,
      initializeLocalDatabaseApis: initializeLocalDatabaseApis,
      initializeLoggers: initializeLoggers,
      application: appScreen,
    ),
  );
}
