import 'package:current_user_preferences_repository/current_user_preferences_repository_api.dart';
import 'package:toy_swapp/initializers/initializers.dart';

class AppRequirementsInitializer {
  const AppRequirementsInitializer({
    required ConfigRequirements configRequirements,
    required ApiRequirements apiRequirements,
    required LoggerRequirements loggerRequirements,
  })  : _configRequirements = configRequirements,
        _apiRequirements = apiRequirements,
        _loggerRequirements = loggerRequirements;

  // Initializers
  final ConfigRequirements _configRequirements;
  final ApiRequirements _apiRequirements;
  final LoggerRequirements _loggerRequirements;

  // Setup Function
  Future<AppRequirements> setupRequirements() async {
    // Setup Configs
    final isConfigsInitialized = await _configRequirements.initialize();

    // Setup Loggers
    final isLoggersInitialized = _loggerRequirements.initialize();

    // Setup Apis
    final sharedPreferencesApi = await _apiRequirements.initSharedPreferences();

    // Set Each Repository
    final currentUserPreferencesRepository = CurrentUserPreferencesRepository(
      localDatabaseApi: sharedPreferencesApi,
    );

    // Get User Preferences
    final currentUserPreferences =
        await currentUserPreferencesRepository.read();

    return AppRequirements(
      repositories: Repositories(
        currentUserPreferences: currentUserPreferencesRepository,
      ),
      currentUserPreferences: currentUserPreferences,
      isConfigsInitialized: isConfigsInitialized,
      isLoggersInitialized: isLoggersInitialized,
    );
  }
}
