import 'package:flutter/widgets.dart';

import 'view.dart';

class AppScreen extends StatelessWidget {
  const AppScreen({
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
    return AppView(
      localizationsDelegates: localizationsDelegates,
      appRouter: appRouter,
      supportedLocales: supportedLocales,
    );
  }
}
