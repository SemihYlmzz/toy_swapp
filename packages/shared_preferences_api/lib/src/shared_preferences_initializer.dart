import 'package:shared_preferences/shared_preferences.dart';
import 'package:shared_preferences_api/src/shared_preferences_api.dart';

class SharedPreferencesInitializer {
  static Future<SharedPreferencesApi> initialize({
    SharedPreferences? sharedPreferences,
  }) async {
    // await Future.delayed(const Duration(seconds: 15));
    // throw Exception('Failed to initialize SharedPreferences');
    return SharedPreferencesApi(
      sharedPreferences:
          sharedPreferences ?? await SharedPreferences.getInstance(),
    );
  }
}
