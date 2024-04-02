import 'package:current_user_preferences_repository/current_user_preferences_repository_api.dart';

class Repositories {
  Repositories({
    required this.currentUserPreferences,
  });

  final CurrentUserPreferencesRepository currentUserPreferences;
}
