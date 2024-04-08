import 'dart:convert';

import 'package:app_metadata_repository/src/models/app_metadata.dart';
import 'package:app_metadata_repository/src/models/terms_versions.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:package_info_plus/package_info_plus.dart';

class AppMetadataRepository {
  const AppMetadataRepository({
    required PackageInfo packageInfo,
    required FirebaseRemoteConfig firebaseRemoteConfig,
  })  : _packageInfo = packageInfo,
        _firebaseRemoteConfig = firebaseRemoteConfig;

  // Instances
  final PackageInfo _packageInfo;
  final FirebaseRemoteConfig _firebaseRemoteConfig;

  Future<AppMetadata> read() async {
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

    return appMetadata;
  }
}
