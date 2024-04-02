import 'package:current_user_preferences_repository/current_user_preferences_repository_api.dart';
import 'package:toy_swapp/initializers/initializers.dart';

class AppInitializer {
  const AppInitializer({
    required InitializeConfigs initializeConfigs,
    required InitializeApis initializeApis,
    required InitializeLoggers initializeLoggers,
  })  : _initializeConfigs = initializeConfigs,
        _initializeApis = initializeApis,
        _initializeLoggers = initializeLoggers;

  // Initializers
  final InitializeConfigs _initializeConfigs;
  final InitializeApis _initializeApis;
  final InitializeLoggers _initializeLoggers;

  // Setup Function
  Future<AppRequirements> setupRequirements() async {
    // Setup Configs
    await _initializeConfigs.initializeAll();

    // Setup Loggers
    _initializeLoggers.initializeAll();

    // Setup Apis
    final sharedPreferencesApi = await _initializeApis.initSharedPreferences();

    // Repositories
    final currentUserPreferences = CurrentUserPreferencesRepository(
      localDatabaseApi: sharedPreferencesApi,
    );

    return AppRequirements(
      repositories: Repositories(
        currentUserPreferences: currentUserPreferences,
      ),
    );
  }
}
