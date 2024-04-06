import 'package:firebase_remote_config_api/firebase_remote_config_api.dart';
import 'package:shared_preferences_api/shared_preferences_api.dart';
import 'package:toy_swapp/firebase_options.dart';

final class ApiRequirements {
  Future<SharedPreferencesApi> initSharedPreferences() async {
    final sharedPreferences = await SharedPreferencesInitializer.initialize();

    return sharedPreferences;
  }

  Future<FirebaseRemoteConfigApi> initFirebaseRemoteConfigApi() async {
    final firebaseRemoteConfig =
        await FirebaseRemoteConfigInitializer.initialize(
      firebaseOptions: DefaultFirebaseOptions.currentPlatform,
    );
    return firebaseRemoteConfig;
  }
}
