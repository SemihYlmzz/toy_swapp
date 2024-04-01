import 'package:toy_swapp/initializers/initializers.dart';

class AppInitializer {
  const AppInitializer({
    required InitializeConfigs initializeConfigs,
    required InitializeRepositories initializeRepositories,
    required InitializeLoggers initializeLoggers,
  })  : _initializeConfigs = initializeConfigs,
        _initializeRepositories = initializeRepositories,
        _initializeLoggers = initializeLoggers;

  // Initializers
  final InitializeConfigs _initializeConfigs;
  final InitializeRepositories _initializeRepositories;
  final InitializeLoggers _initializeLoggers;

  // TODO: Return AppRequirements(repositories: repositories,services: services,)
  // Setup Function
  Future<Repositories> setupRequirements() async {
    // Setup Configs
    await _initializeConfigs.initializeAll();

    // Setup Loggers
    _initializeLoggers.initializeAll();

    // Setup Repositories
    final currentUserPreferencesRepository =
        await _initializeRepositories.initCurrentUserPreferences();

    return (currentUserPreferences: currentUserPreferencesRepository,);
  }
}
