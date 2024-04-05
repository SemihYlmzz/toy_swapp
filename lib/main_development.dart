import 'package:flutter/material.dart';

import 'app/app.dart';
import 'initializers/initializers.dart';
import 'l10n/l10n.dart';
import 'router/router.dart';
import 'startup/startup.dart';
import 'themes/themes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: CustomThemeData.themeData(const DarkThemePalette()),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: StartupScreen(
        appRequirementsInitializer: AppRequirementsInitializer(
          // Requirements
          configRequirements: ConfigRequirements(),
          loggerRequirements: LoggerRequirements(),
          apiRequirements: ApiRequirements(),
        ),
        application: (appRequirements) {
          final appPreferencesRepository =
              appRequirements.repositories.appPreferences;
          return AppScreen(
            // Localizations
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            // Router
            appRouter: AppRouter.instance.router(
              appPreferencesRepository.appPreferencesStream,
            ),
            // Requirements Injection
            appRequirements: appRequirements,
          );
        },
      ),
    ),
  );
}
