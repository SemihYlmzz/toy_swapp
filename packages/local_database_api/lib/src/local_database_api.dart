abstract class LocalDatabaseApi {
  const LocalDatabaseApi();

  Future<void> create(String key, {required Map<String, dynamic> data});
  Future<Map<String, dynamic>?> read(String key);
  Future<void> update();
  Future<void> delete();
}
