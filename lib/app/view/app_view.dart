import 'package:flutter/material.dart';

import '../../themes/themes.dart';

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
    return MaterialApp.router(

      // Configurations
      debugShowCheckedModeBanner: false,

      // Theme
      theme: ThemeData(),
      darkTheme: CustomThemeData.themeData(const DefaultDarkPalette()),
      //* themeMode: widget.currentDevicePreferences.themeMode,

      // Localization
      localizationsDelegates: localizationsDelegates,
      supportedLocales: supportedLocales,
      //* locale: currentLocale,

      // Router
      routerConfig: appRouter,

    );
  }
}
