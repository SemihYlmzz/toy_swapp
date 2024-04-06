abstract class RemoteConfigApi {
  const RemoteConfigApi();
  Map<String, dynamic> getJson(String key);
  Stream<void> onChangeStream();
  Future<void> saveChanges();
}
