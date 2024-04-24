import 'package:cloud_storage_firebase_storage/cloud_storage_firebase_storage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:remote_database_cloud_firestore/remote_database_cloud_firestore.dart';

import 'models/models.dart';

class ApiDependencies {
  const ApiDependencies({
    required FirebaseOptions firebaseOptions,
  }) : _firebaseOptions = firebaseOptions;
  final FirebaseOptions _firebaseOptions;

  Future<Apis> init() async {
    // Remote Database
    final remoteDatabase = await CloudFirestoreInitializer.initialize(
      firebaseOptions: _firebaseOptions,
    );
    // Cloud Storage
    final cloudStorage = await FirebaseStorageInitializer.initialize(
      firebaseOptions: _firebaseOptions,
    );

    return Apis(
      remoteDatabase: remoteDatabase,
      cloudStorage: cloudStorage,
    );
  }
}
