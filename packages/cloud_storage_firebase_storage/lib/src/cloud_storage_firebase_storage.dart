import 'dart:typed_data';

import 'package:cloud_storage/cloud_storage.dart';
import 'package:firebase_storage/firebase_storage.dart';

class CloudStorageFirebaseStorage extends CloudStorage {
  CloudStorageFirebaseStorage({
    required FirebaseStorage firebaseStorage,
  }) : _firebaseStorage = firebaseStorage;
  // Api
  final FirebaseStorage _firebaseStorage;

  @override
  Future<String> uploadImageGetUrl({
    required String path,
    required Uint8List image,
  }) async {
    try {
      final storageRef = _firebaseStorage.ref().child(path);
      final task = await storageRef.putData(image);
      return task.ref.getDownloadURL();
    } catch (exception) {
      if (exception is FirebaseException) {}
      throw Exception();
    }
  }
}
