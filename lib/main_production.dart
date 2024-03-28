import 'package:current_user_preferences_repository/current_user_preferences_repository_api.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:toy_swapp/app/view/app_screen.dart';
import 'package:toy_swapp/l10n/l10n.dart';
import 'package:toy_swapp/router/app_router.dart';

void main() {
  runApp(
    AppScreen(
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      appRouter: AppRouter.instance.router(),
      currentUserPreferencesRepository: CurrentUserPreferencesRepository(),
    ),
  );
}
