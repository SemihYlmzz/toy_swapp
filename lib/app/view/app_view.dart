import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../themes/themes.dart';
import '../app.dart';

class AppView extends StatelessWidget {
  const AppView({
    required this.localizationsDelegates,
    required this.supportedLocales,
    required this.appRouter,
    super.key,
  });

  final Iterable<LocalizationsDelegate<dynamic>>? localizationsDelegates;
  final Iterable<Locale> supportedLocales;
  final RouterConfig<Object>? appRouter;

  @override
  Widget build(BuildContext context) {
    final appPreferences = context.select(
      (AppBloc bloc) => bloc.state.appPreferences,
    );

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      // Theme
      theme: ThemeData(),
      darkTheme: CustomThemeData.themeData(
        const DarkThemePalette(),
      ),
      themeMode: appPreferences.themeMode,

      // Localization
      localizationsDelegates: localizationsDelegates,
      supportedLocales: supportedLocales,
      locale: localeFromLanguageCode(appPreferences.languageCode),

      // Router
      routerConfig: appRouter,
    );
  }

  Locale? localeFromLanguageCode(String? languageCode) {
    if (languageCode == null) {
      return null;
    }
    return Locale.fromSubtags(languageCode: languageCode);
  }
}
