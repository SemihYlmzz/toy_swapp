import 'package:cloud_storage_firebase_storage/cloud_storage_firebase_storage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';
import 'package:toy_swapp_client/toy_swapp_client.dart';

import 'models/models.dart';

class ApiDependencies {
  const ApiDependencies({
    required FirebaseOptions firebaseOptions,
  }) : _firebaseOptions = firebaseOptions;
  final FirebaseOptions _firebaseOptions;

  Future<Apis> init() async {
    // Client
    final client = Client(
      'https://serverpod-api-ihtf6wdrna-nw.a.run.app/',
    )..connectivityMonitor = FlutterConnectivityMonitor();

    // Cloud Storage
    final cloudStorage = await FirebaseStorageInitializer.initialize(
      firebaseOptions: _firebaseOptions,
    );

    return Apis(
      client: client,
      cloudStorage: cloudStorage,
    );
  }
}
