abstract class RemoteDatabaseApi {
  const RemoteDatabaseApi();

  Future<void> createDocument(String key, {required Map<String, dynamic> data});
  Future<Map<String, dynamic>?> readDocument(String key);
  Stream<Map<String, dynamic>?> watchDocument(String key);
  Future<void> updateDocument(String key, {required Map<String, dynamic> data});
  Future<void> deleteDocument(String key);
}
