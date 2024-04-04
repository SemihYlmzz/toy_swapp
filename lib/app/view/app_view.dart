import 'package:current_user_preferences_repository/current_user_preferences_repository_api.dart';
import 'package:flutter/material.dart';

import '../../themes/themes.dart';

class AppView extends StatelessWidget {
  const AppView({
    required this.localizationsDelegates,
    required this.supportedLocales,
    required this.appRouter,
    required this.currentUserPreferences,
    super.key,
  });

  final Iterable<LocalizationsDelegate<dynamic>>? localizationsDelegates;
  final Iterable<Locale> supportedLocales;
  final RouterConfig<Object>? appRouter;
  final CurrentUserPreferences currentUserPreferences;

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      // Theme
      theme: ThemeData(),
      darkTheme: CustomThemeData.themeData(
        const DarkThemePalette(),
      ),
      themeMode: currentUserPreferences.themeMode,

      // Localization
      localizationsDelegates: localizationsDelegates,
      supportedLocales: supportedLocales,
      locale: _localeFromLanguage(currentUserPreferences.language),

      // Router
      routerConfig: appRouter,
    );
  }

  Locale? _localeFromLanguage(Language language) {
    return switch (language) {
      Language.turkish => const Locale('tr'),
      Language.english => const Locale('en'),
      _ => null,
    };
  }
}
