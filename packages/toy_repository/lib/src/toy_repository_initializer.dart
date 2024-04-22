import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';

import '../toy_repository.dart';

class ToyRepositoryInitializer {
  static Future<ToyRepository> initialize({
    required FirebaseOptions firebaseOptions,
    FirebaseFirestore? firebaseFirestore,
    FirebaseStorage? firebaseStorage,
  }) async {
    await Firebase.initializeApp(options: firebaseOptions);
    return ToyRepository(
      firebaseFirestore: firebaseFirestore ?? FirebaseFirestore.instance,
      firebaseStorage: firebaseStorage ?? FirebaseStorage.instance,
    );
  }
}
