import 'package:app_preferences_repository/app_preferences_repository.dart';
import 'package:auth_repository/auth_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../app.dart';

class AppScreen extends StatelessWidget {
  const AppScreen({
    required AuthRepository authRepository,
    required AppPreferencesRepository appPreferencesRepository,
    required AppPreferences appPreferences,
    required RouterConfig<Object> routerConfig,
    super.key,
  })  : _authRepository = authRepository,
        _appPreferencesRepository = appPreferencesRepository,
        _appPreferences = appPreferences,
        _routerConfig = routerConfig;
  // Repositories
  final AuthRepository _authRepository;
  final AppPreferencesRepository _appPreferencesRepository;

  // Instances
  final AppPreferences _appPreferences;
  final RouterConfig<Object> _routerConfig;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // Repos
        RepositoryProvider(create: (context) => _authRepository),
        RepositoryProvider(create: (context) => _appPreferencesRepository),

        // Bloc
        BlocProvider(
          create: (context) => AppBloc(
            appPreferencesRepository: _appPreferencesRepository,
            appPreferences: _appPreferences,
          )..add(const AppEvent.checkIsTermsAccepted()),
        ),
      ],
      child: AppView(routerConfig: _routerConfig),
    );
  }
}
