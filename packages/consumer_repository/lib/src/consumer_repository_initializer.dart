import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:consumer_repository/consumer_repository.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';

class ConsumerRepositoryInitializer {
  static Future<ConsumerRepository> initialize({
    FirebaseFirestore? firebaseFirestore,
    FirebaseStorage? firebaseStorage,
  }) async {
    await Firebase.initializeApp();
    return ConsumerRepository(
      firebaseFirestore: firebaseFirestore ?? FirebaseFirestore.instance,
      firebaseStorage: firebaseStorage ?? FirebaseStorage.instance,
    );
  }
}
