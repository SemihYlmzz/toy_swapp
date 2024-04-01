import 'package:current_user_preferences_repository/current_user_preferences_repository_api.dart';
import 'package:toy_swapp/initializers/initializers.dart';

class AppInitializer {
  const AppInitializer({
    required InitializeConfigs initializeConfigs,
    required InitializeLocalDatabase initializeLocalDatabase,
    required InitializeLoggers initializeLoggers,
  })  : _initializeConfigs = initializeConfigs,
        _initializeLocalDatabase = initializeLocalDatabase,
        _initializeLoggers = initializeLoggers;

  // Initializers
  final InitializeConfigs _initializeConfigs;
  final InitializeLocalDatabase _initializeLocalDatabase;
  final InitializeLoggers _initializeLoggers;

  // TODO: Return AppRequirements(repositories: repositories,services: services,)
  // Setup Function
  Future<Repositories> setupRequirements() async {
    // Setup Configs
    await _initializeConfigs.initializeAll();

    // Setup Loggers
    _initializeLoggers.initializeAll();

    // Setup Local Database Apis
    final sharedPreferencesApi =
        await _initializeLocalDatabase.initSharedPreferences();

    return (
      currentUserPreferences: CurrentUserPreferencesRepository(
        localDatabaseApi: sharedPreferencesApi,
      ),
    );
  }
}
