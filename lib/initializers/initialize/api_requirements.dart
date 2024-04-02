import 'package:shared_preferences_api/shared_preferences_api.dart';

final class ApiRequirements {
  Future<SharedPreferencesApi> initSharedPreferences() async {
    final sharedPreferences = await SharedPreferencesInitializer.initialize();

    return sharedPreferences;
  }
}
