import 'package:current_user_preferences_repository/current_user_preferences_repository_api.dart';
import 'package:shared_preferences_api/shared_preferences_api.dart';

final class InitializeRepositories {
  const InitializeRepositories({
    required SharedPreferencesInitializer sharedPreferencesInitializer,
  }) : _sharedPreferencesInitializer = sharedPreferencesInitializer;

  final SharedPreferencesInitializer _sharedPreferencesInitializer;

  Future<CurrentUserPreferencesRepository> initCurrentUserPreferences() async {
    //  LocalDatabaseApi
    final sharedPreferences = await _sharedPreferencesInitializer.initialize();

    return CurrentUserPreferencesRepository(
      localDatabaseApi: sharedPreferences,
    );
  }
}
