import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fpdart/fpdart.dart';
import 'package:remote_database/remote_database.dart';
import 'package:toy_swapp/errors/errors.dart';

class RemoteDatabaseCloudFirestore extends RemoteDatabase {
  RemoteDatabaseCloudFirestore({
    required FirebaseFirestore firestore,
  }) : _firestore = firestore;

  final FirebaseFirestore _firestore;

  WriteBatch _batch = FirebaseFirestore.instance.batch();

  @override
  Future<Map<String, dynamic>?> readDoc({
    required String collectionID,
    required String documentID,
  }) async {
    try {
      final documentSnapshot =
          await _firestore.collection(collectionID).doc(documentID).get();
      if (!documentSnapshot.exists) {
        return null;
      }
      final documentSnapshotData = documentSnapshot.data();
      if (documentSnapshotData == null) {
        return null;
      }
      return documentSnapshotData;
    } catch (exception) {
      rethrow;
    }
  }

  @override
  Future<List<Map<String, dynamic>>?> readCollection({
    required String collectionID,
  }) async {
    try {
      final collectionData = await _firestore.collection(collectionID).get();
      if (collectionData.docs.isEmpty) {
        return null;
      }
      final collectionDataList = collectionData.docs
          .map((documentSnapshot) => documentSnapshot.data())
          .toList();
      return collectionDataList;
    } catch (exception) {
      rethrow;
    }
  }

  @override
  void batchSetDoc({
    required String collectionID,
    required String? documentID,
    required Map<String, dynamic> jsonData,
  }) {
    final docRef = _firestore.collection(collectionID).doc(documentID);
    _batch.set(docRef, jsonData);
    print('setted');
    return;
  }

  @override
  void batchUpdateDoc({
    required String collectionID,
    required String documentID,
    required Map<String, dynamic> jsonData,
  }) {
    final docRef = _firestore.collection(collectionID).doc(documentID);
    _batch.update(docRef, jsonData);
    return;
  }

  @override
  FutureUnit batchCommit() async {
    try {
      await _batch.commit();
      _batch = _firestore.batch();
      return right(unit);
    } catch (exception) {
      return const Left(RemoteDatabaseException.unknown());
    }
  }
}
