import 'package:shared_preferences_api/shared_preferences_api.dart';

final class InitializeLocalDatabase {
  Future<SharedPreferencesApi> initSharedPreferences() async {
    //  Local Database API
    final sharedPreferences = await SharedPreferencesInitializer.initialize();

    return sharedPreferences;
  }
}
