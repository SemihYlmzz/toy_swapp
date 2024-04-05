import 'dart:async';

import 'package:app_metadata_repository/app_metadata_repository.dart';
import 'package:remote_database_api/remote_database_api.dart';

class AppMetadataRepository {
  AppMetadataRepository({
    required RemoteDatabaseApi remoteDatabaseApi,
  }) : _remoteDatabaseApi = remoteDatabaseApi {
    appPreferencesStream.listen((event) {
      appPreferences = event;
    });
  }
  // Data Manipulation
  final _streamController = StreamController<AppMetadata>.broadcast();

  Stream<AppMetadata> get appPreferencesStream => _streamController.stream;

  AppMetadata? appPreferences;

  // Data Bases
  final RemoteDatabaseApi _remoteDatabaseApi;

  // Functions
  Stream<void> watch() async* {
    StreamSubscription<Map<String, dynamic>?>? stream;
    try {
      stream = _remoteDatabaseApi.watchDocument('app_metadata/ios').listen(
        (event) {
          if (event == null) {
            stream?.cancel();
            throw Exception('Document not found');
          }
          _streamController.sink.add(AppMetadata.fromJson(event));
        },
      );
    } catch (exception) {
      await stream?.cancel();
      throw Exception(exception);
    }
  }
}
