abstract class RemoteConfigApi {
  const RemoteConfigApi();
  String getString(String key);
  double getDouble(String key);
  int getInt(String key);
  bool getBool(String key);
  Stream<void> onChangeStream();
  Future<void> saveChanges();
}
