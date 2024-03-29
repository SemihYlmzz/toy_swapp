import 'package:shared_preferences/shared_preferences.dart';
import 'package:shared_preferences_api/src/shared_preferences_api.dart';

class SharedPreferencesInitializer {
  Future<SharedPreferencesApi> initialize({
    SharedPreferences? sharedPreferences,
  }) async {
    sharedPreferences ??= await SharedPreferences.getInstance();
    return SharedPreferencesApi(
      sharedPreferences: sharedPreferences,
    );
  }
}
