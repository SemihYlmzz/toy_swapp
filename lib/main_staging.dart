import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'app/app.dart';
import 'initializers/initializers.dart';
import 'l10n/l10n.dart';
import 'router/router.dart';
import 'startup/startup.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    StartupScreen(
      appInitializer: AppInitializer(
        // Initializers
        initializeConfigs: InitializeConfigs(),
        initializeLoggers: InitializeLoggers(),
        initializeLocalDatabase: InitializeLocalDatabase(),
      ),
      application: (repositories) => AppScreen(
        // Localizations
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: AppLocalizations.supportedLocales,
        // Router
        appRouter: AppRouter.instance.router(),
        // Repositories
        currentUserPreferencesRepository: repositories.currentUserPreferences,
      ),
    ),
  );
}
