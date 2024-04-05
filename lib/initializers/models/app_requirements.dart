import 'package:app_preferences_repository/app_preferences_repository_api.dart';
import 'package:toy_swapp/initializers/initializers.dart';

class AppRequirements {
  const AppRequirements({
    required this.repositories,
    required this.appPreferences,
    required this.isConfigsInitialized,
    required this.isLoggersInitialized,
  });

  final Repositories repositories;
  final AppPreferences appPreferences;
  final bool isConfigsInitialized;
  final bool isLoggersInitialized;
}
