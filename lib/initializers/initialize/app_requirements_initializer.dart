import 'package:app_metadata_repository/app_metadata_repository.dart';
import 'package:app_preferences_repository/app_preferences_repository_api.dart';
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

    final firebaseRemoteConfigApi =
        await _apiRequirements.initFirebaseRemoteConfigApi();

    // Set Each Repository
    final appPreferencesRepository = AppPreferencesRepository(
      localDatabaseApi: sharedPreferencesApi,
    );
    final appMetadataRepository = AppMetadataRepository(
      remoteConfigApi: firebaseRemoteConfigApi,
    );

    // Get User Preferences
    final appPreferences = await appPreferencesRepository.read();
    final appMetadata = await appMetadataRepository.getValues();
    return AppRequirements(
      repositories: Repositories(
        appPreferences: appPreferencesRepository,
        appMetadata: appMetadataRepository,
      ),
      appPreferences: appPreferences,
      appMetadata: appMetadata,
      isConfigsInitialized: isConfigsInitialized,
      isLoggersInitialized: isLoggersInitialized,
    );
  }
}
