import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toy_swapp/app/app.dart';

import '../../dependencies/dependencies.dart';
import '../startup.dart';

class StartupScreen extends StatelessWidget {
  const StartupScreen({
    required ConfigDependencies configDependencies,
    required LoggerDependencies loggerDependencies,
    required InstanceDependencies instanceDependencies,
    required RepositoryDependencies repositoryDependencies,
    required ServiceDependencies serviceDependencies,
    super.key,
  })  : _configDependencies = configDependencies,
        _loggerDependencies = loggerDependencies,
        _instanceDependencies = instanceDependencies,
        _repositoryDependencies = repositoryDependencies,
        _serviceDependencies = serviceDependencies;

  final ConfigDependencies _configDependencies;
  final LoggerDependencies _loggerDependencies;
  final InstanceDependencies _instanceDependencies;
  final RepositoryDependencies _repositoryDependencies;
  final ServiceDependencies _serviceDependencies;

  @override
  Widget build(BuildContext context) {
    final startupBlocListeners = StartupBlocListeners();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: BlocProvider(
        create: (context) => StartupBloc(
          configDependencies: _configDependencies,
          loggerDependencies: _loggerDependencies,
          instanceDependencies: _instanceDependencies,
          repositoryDependencies: _repositoryDependencies,
          serviceDependencies: _serviceDependencies,
        )..add(const StartupEvent.initializeAllDependencies()),
        child: MultiBlocListener(
          listeners: [
            startupBlocListeners.errorDisplayer(),
          ],
          child: BlocSelector<StartupBloc, StartupState, AppDependencies?>(
            selector: (state) {
              return state.appDependencies;
            },
            builder: (context, appDependencies) {
              return appDependencies == null
                  ? const StartupView()
                  : AppScreen(appDependencies: appDependencies);
            },
          ),
        ),
      ),
    );
  }
}
