import 'package:current_user_preferences_repository/current_user_preferences_repository_api.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:shared_widgets/shared_widgets.dart';

import '../app.dart';

class AppScreen extends StatelessWidget {
  const AppScreen({
    required this.localizationsDelegates,
    required this.supportedLocales,
    required this.appRouter,
    required CurrentUserPreferencesRepository currentUserPreferencesRepository,
    super.key,
  }) : _currentUserPreferencesRepository = currentUserPreferencesRepository;

  final Iterable<LocalizationsDelegate<dynamic>>? localizationsDelegates;
  final Iterable<Locale> supportedLocales;
  final RouterConfig<Object>? appRouter;
  // Repos
  final CurrentUserPreferencesRepository _currentUserPreferencesRepository;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // Repositories
        Provider.value(value: _currentUserPreferencesRepository),

        // Bloc
        BlocProvider(
          create: (context) => AppBloc(
            currentUserPreferencesRepository: _currentUserPreferencesRepository,
          )..add(AppEvent.initializeCurrentUserPreferences()),
        ),
      ],
      child: BlocBuilder<AppBloc, AppState>(
        builder: (context, state) {
          if (state.currentUserPreferences != null) {
            return AppView(
              localizationsDelegates: localizationsDelegates,
              appRouter: appRouter,
              supportedLocales: supportedLocales,
              currentUserPreferences: state.currentUserPreferences!,
            );
          }

          if (state.isInitError) {
            return const AppPreferencesLoadError();
          }
          return const BaseColumn(
            children: [
              Text('Loading...'),
              CircularProgressIndicator(),
            ],
          );
        },
      ),
    );
  }
}
