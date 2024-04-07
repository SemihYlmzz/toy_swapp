import 'dart:async';
import 'package:app_metadata_repository/app_metadata_repository.dart';
import 'package:remote_config_api/remote_config_api.dart';

class AppMetadataRepository {
  AppMetadataRepository({
    required RemoteConfigApi remoteConfigApi,
    // required ApplicationInfo applicationInfo,
  }) : _remoteConfigApi = remoteConfigApi {
    _remoteConfigApi.onChangeStream().listen((event) async {
      await _remoteConfigApi.saveChanges();
      await getValues();
    });
    appMetadataStream.listen((event) {
      appMetadata = event;
    });
  }
  // Data Manipulation
  final _streamController = StreamController<AppMetadata>.broadcast();

  Stream<AppMetadata> get appMetadataStream => _streamController.stream;

  AppMetadata? appMetadata;

  // Data Bases
  final RemoteConfigApi _remoteConfigApi;

  // Functions
  Future<AppMetadata> getValues() async {
    try {
      final jsonAppVersion = _remoteConfigApi.getJson('app_version');
      final jsonTermsVersions = _remoteConfigApi.getJson('terms_versions');

      final currentAppMetadata = AppMetadata(
        termsVersions: TermsVersions.fromJson(jsonTermsVersions),
        appVersion: AppVersion.fromJson(jsonAppVersion),
      );
      _streamController.sink.add(currentAppMetadata);
      return currentAppMetadata;
    } catch (exception) {
      throw Exception(exception);
    }
  }
}
