import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:toy_swapp/initializers/initializers.dart';

import '../app.dart';

class AppScreen extends StatelessWidget {
  const AppScreen({
    required this.localizationsDelegates,
    required this.supportedLocales,
    required this.appRouter,
    required AppRequirements appRequirements,
    super.key,
  }) : _appRequirements = appRequirements;

  final Iterable<LocalizationsDelegate<dynamic>>? localizationsDelegates;
  final Iterable<Locale> supportedLocales;
  final RouterConfig<Object>? appRouter;
  // Repos
  final AppRequirements _appRequirements;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // Repositories
        Provider.value(
          value: _appRequirements.repositories.currentUserPreferences,
        ),

        // Bloc
        BlocProvider(
          create: (context) => AppBloc(
            currentUserPreferencesRepository:
                _appRequirements.repositories.currentUserPreferences,
            currentUserPreferences: _appRequirements.currentUserPreferences,
          ),
        ),
      ],
      child: BlocBuilder<AppBloc, AppState>(
        builder: (context, state) {
          return AppView(
            localizationsDelegates: localizationsDelegates,
            appRouter: appRouter,
            supportedLocales: supportedLocales,
          );
        },
      ),
    );
  }
}
