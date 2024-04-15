import 'dart:async';
import 'dart:convert';

import 'package:app_metadata_repository/src/models/app_metadata.dart';
import 'package:app_metadata_repository/src/models/terms_versions.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:package_info_plus/package_info_plus.dart';

class AppMetadataRepository {
  AppMetadataRepository({
    required PackageInfo packageInfo,
    required FirebaseRemoteConfig firebaseRemoteConfig,
  })  : _packageInfo = packageInfo,
        _firebaseRemoteConfig = firebaseRemoteConfig {
    appMetadataStream.listen((event) {
      appMetadata = event;
    });
  }

  // Instances
  final PackageInfo _packageInfo;
  final FirebaseRemoteConfig _firebaseRemoteConfig;

  // VARIABLES
  final _appMetadataStreamController =
      StreamController<AppMetadata>.broadcast();
  Stream<AppMetadata> get appMetadataStream =>
      _appMetadataStreamController.stream;
  AppMetadata appMetadata = AppMetadata.empty();

  // Functions
  Future<AppMetadata> read() async {
    try {
      final termsVersionDecoded =
          _firebaseRemoteConfig.getString('terms_versions');
      final termsVersionsJson = jsonDecode(
        termsVersionDecoded,
      ) as Map<String, dynamic>;

      final appMetadata = AppMetadata(
        termsVersions: TermsVersions.fromJson(termsVersionsJson),
        appName: _packageInfo.appName,
        coreVersionNumber: int.parse(_packageInfo.version.split('.').first),
        version: _packageInfo.version,
      );

      _appMetadataStreamController.sink.add(appMetadata);
      return appMetadata;
    } catch (exception) {
      throw Exception('Error reading App Metadata: $exception');
    }
  }
}
