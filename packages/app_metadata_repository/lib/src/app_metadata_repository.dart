import 'dart:async';

import 'package:app_metadata_repository/app_metadata_repository.dart';
import 'package:remote_config_api/remote_config_api.dart';

class AppMetadataRepository {
  AppMetadataRepository({
    required RemoteConfigApi remoteConfigApi,
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
  Future<void> getValues() async {
    try {
      final appVersion = _remoteConfigApi.getString('app_version');
      final termsVersion = _remoteConfigApi.getDouble('terms_version');
      _streamController.sink.add(
        AppMetadata(termsVersion: termsVersion, appVersion: appVersion),
      );
      return;
    } catch (exception) {
      throw Exception(exception);
    }
  }
}
