import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:remote_config_api/remote_config_api.dart';

class FirebaseRemoteConfigApi extends RemoteConfigApi {
  FirebaseRemoteConfigApi({
    required FirebaseRemoteConfig firebaseRemoteConfig,
  }) : _firebaseRemoteConfig = firebaseRemoteConfig;

  // Instances
  final FirebaseRemoteConfig _firebaseRemoteConfig;

  @override
  String getString(String key) {
    return _firebaseRemoteConfig.getString(key);
  }

  @override
  double getDouble(String key) {
    return _firebaseRemoteConfig.getDouble(key);
  }

  @override
  int getInt(String key) {
    return _firebaseRemoteConfig.getInt(key);
  }

  @override
  bool getBool(String key) {
    return _firebaseRemoteConfig.getBool(key);
  }

  @override
  Stream<void> onChangeStream() {
    return _firebaseRemoteConfig.onConfigUpdated;
  }

  @override
  Future<void> saveChanges() async {
    await _firebaseRemoteConfig.activate();
  }
}
