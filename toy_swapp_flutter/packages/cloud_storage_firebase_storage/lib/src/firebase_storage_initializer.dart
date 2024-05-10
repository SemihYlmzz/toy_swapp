import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';

import '../cloud_storage_firebase_storage.dart';

class FirebaseStorageInitializer {
  static Future<CloudStorageFirebaseStorage> initialize({
    required FirebaseOptions firebaseOptions,
    FirebaseStorage? firebaseStorage,
  }) async {
    await Firebase.initializeApp(
      options: firebaseOptions,
    );

    return CloudStorageFirebaseStorage(
      firebaseStorage: firebaseStorage ?? FirebaseStorage.instance,
    );
  }
}
