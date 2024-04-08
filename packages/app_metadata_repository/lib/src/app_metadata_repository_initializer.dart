import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../app_metadata_repository.dart';

class AppMetadataRepositoryInitializer {
  static Future<AppMetadataRepository> initialize({
    FirebaseRemoteConfig? firebaseRemoteConfig,
    RemoteConfigSettings? remoteConfigSettings,
  }) async {
    try {
      await Firebase.initializeApp();

      // Initialize Variables
      firebaseRemoteConfig ??= FirebaseRemoteConfig.instance;
      remoteConfigSettings ??= RemoteConfigSettings(
        fetchTimeout: const Duration(seconds: 10),
        minimumFetchInterval: const Duration(seconds: 1),
      );
      // Initialize Services
      final packageInfo = await PackageInfo.fromPlatform();
      // Initialize Requirements
      await firebaseRemoteConfig.ensureInitialized();
      await firebaseRemoteConfig.setConfigSettings(remoteConfigSettings);
      await firebaseRemoteConfig.fetchAndActivate();

      // Return API
      return AppMetadataRepository(
        firebaseRemoteConfig: firebaseRemoteConfig,
        packageInfo: packageInfo,
      );
    } catch (exception) {
      rethrow;
    }
  }
}
