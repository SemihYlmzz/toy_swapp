import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:remote_database_cloud_firestore/remote_database_cloud_firestore.dart';

class CloudFirestoreInitializer {
  static Future<RemoteDatabaseCloudFirestore> initialize({
    required FirebaseOptions firebaseOptions,
    FirebaseFirestore? firestore,
  }) async {
    await Firebase.initializeApp(
      options: firebaseOptions,
    );

    return RemoteDatabaseCloudFirestore(
      firestore: firestore ?? FirebaseFirestore.instance,
    );
  }
}
