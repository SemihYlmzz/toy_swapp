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

  runApp(
    StartupScreen(
      initializeConfigs: InitializeConfigs(),
      initializeLocalDatabaseApis: InitializeLocalDatabaseApis(),
      initializeLoggers: InitializeLoggers(),
      application: (localDatabaseApis) => AppScreen(
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: AppLocalizations.supportedLocales,
        appRouter: AppRouter.instance.router(),
        // Repositories
        currentUserPreferencesRepository: CurrentUserPreferencesRepository(
          localDatabaseApi: localDatabaseApis.sharedPreferencesApi,
        ),
      ),
    ),
  );
}
