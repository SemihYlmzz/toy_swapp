import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:firebase_remote_config_api/firebase_remote_config_api.dart';

import 'firebase_remote_config_api.dart';

class FirebaseRemoteConfigInitializer {
  static Future<FirebaseRemoteConfigApi> initialize({
    required FirebaseOptions firebaseOptions,
    FirebaseRemoteConfig? firebaseRemoteConfig,
    RemoteConfigSettings? remoteConfigSettings,
  }) async {
    try {
      await Firebase.initializeApp(options: firebaseOptions);

      // Initialize Variables
      firebaseRemoteConfig ??= FirebaseRemoteConfig.instance;
      remoteConfigSettings ??= RemoteConfigSettings(
        fetchTimeout: const Duration(seconds: 10),
        minimumFetchInterval: const Duration(seconds: 1),
      );

      // Initialize Requirements
      await firebaseRemoteConfig.ensureInitialized();
      await firebaseRemoteConfig.setConfigSettings(remoteConfigSettings);
      await firebaseRemoteConfig.fetchAndActivate();

      // Return API
      return FirebaseRemoteConfigApi(
        firebaseRemoteConfig: firebaseRemoteConfig,
      );
    } catch (exception) {
      rethrow;
    }
  }
}
