import 'package:flutter/material.dart';

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
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        useMaterial3: true,
      ),

      // Localization
      localizationsDelegates: localizationsDelegates,
      supportedLocales: supportedLocales,

      // Router
      routerConfig: appRouter,
    );
  }
}
