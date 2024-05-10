import 'package:app_preferences_repository/app_preferences_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppPreferencesRepositoryInitializer {
  static Future<AppPreferencesRepository> initialize({
    SharedPreferences? nullableSharedPreferences,
  }) async {
    final sharedPreferences =
        nullableSharedPreferences ?? await SharedPreferences.getInstance();
    return AppPreferencesRepository(
      sharedPreferences: sharedPreferences,
    );
  }
}
