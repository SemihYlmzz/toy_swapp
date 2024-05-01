import 'package:toy_swapp/errors/errors.dart';

abstract class RemoteDatabase {
  const RemoteDatabase();

  void batchSetDoc({
    required String collectionID,
    required String? documentID,
    required Map<String, dynamic> jsonData,
  });

  Future<Map<String, dynamic>?> readDoc({
    required String collectionID,
    required String documentID,
  });

  void batchUpdateDoc({
    required String collectionID,
    required String documentID,
    required Map<String, dynamic> jsonData,
  });
  Future<void> updateDoc({
    required String collectionID,
    required String documentID,
    required Map<String, dynamic> jsonData,
  });

  Future<List<Map<String, dynamic>>?> readCollection({
    required String collectionID,
    required String? orderBy,
    bool descending = false,
    int? limit,
    int? limitToLast,
    Iterable<Object?>? endBefore,
    List<({String field, Object? value})>? fieldIsEqualToList,
    ({String field, Object? value})? fieldIsNotEqualTo,
  });
  FutureUnit batchCommit();
}
