import 'package:shared_preferences_api/shared_preferences_api.dart';
import 'package:toy_swapp/initializers/initializers.dart';

final class InitializeLocalDatabaseApis {
  Future<LocalDatabaseApis> initialize() async {
    //  LocalDatabaseApi
    final sharedPreferences = await SharedPreferencesInitializer.initialize();

    return (sharedPreferencesApi: sharedPreferences);
  }
}
