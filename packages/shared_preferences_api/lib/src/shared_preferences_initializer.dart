import 'package:shared_preferences/shared_preferences.dart';
import 'package:shared_preferences_api/src/shared_preferences_api.dart';

class SharedPreferencesInitializer {
  factory SharedPreferencesInitializer() {
    _instance ??= SharedPreferencesInitializer._();
    return _instance!;
  }
  SharedPreferencesInitializer._();
  static SharedPreferencesInitializer? _instance;
  SharedPreferences? _sharedPreferences;

  Future<SharedPreferencesApi> initialize({
    SharedPreferences? sharedPreferences,
  }) async {
    // await Future.delayed(const Duration(seconds: 15));
    // throw Exception('Failed to initialize SharedPreferences');
    _sharedPreferences ??=
        sharedPreferences ?? await SharedPreferences.getInstance();
    return SharedPreferencesApi(
      sharedPreferences: _sharedPreferences!,
    );
  }
}
