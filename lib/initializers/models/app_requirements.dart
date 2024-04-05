import 'package:current_user_preferences_repository/current_user_preferences_repository_api.dart';
import 'package:toy_swapp/initializers/initializers.dart';

class AppRequirements {
  const AppRequirements({
    required this.repositories,
    required this.currentUserPreferences,
    required this.isConfigsInitialized,
    required this.isLoggersInitialized,
  });

  final Repositories repositories;
  final CurrentUserPreferences currentUserPreferences;
  final bool isConfigsInitialized;
  final bool isLoggersInitialized;
}
