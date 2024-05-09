import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toy_swapp/dependencies/dependencies.dart';

import '../app.dart';

class AppScreen extends StatelessWidget {
  const AppScreen({
    required AppDependencies appDependencies,
    super.key,
  }) : _appDependencies = appDependencies;

  final AppDependencies _appDependencies;

  @override
  Widget build(BuildContext context) {
    final apis = _appDependencies.apis;
    final repositories = _appDependencies.repositories;
    final instances = _appDependencies.instances;
    final services = _appDependencies.services;

    return MultiBlocProvider(
      providers: [
        // Services
        RepositoryProvider(create: (context) => services.permission),
        RepositoryProvider(create: (context) => services.image),
        RepositoryProvider(create: (context) => services.location),
        RepositoryProvider(create: (context) => repositories.auth),
        // Repositories
        RepositoryProvider(create: (context) => repositories.appPreferences),
        RepositoryProvider(create: (context) => repositories.appMetadata),
        RepositoryProvider(create: (context) => repositories.consumer),
        RepositoryProvider(create: (context) => repositories.toy),
        RepositoryProvider(create: (context) => repositories.support),
        // Apis
        RepositoryProvider(create: (context) => apis.client),
        // Bloc
        BlocProvider(
          create: (context) => AppBloc(
            appPreferencesRepository: repositories.appPreferences,
          ),
        ),
      ],
      child: AppView(
        routerConfig: instances.goRouter,
      ),
    );
  }
}
