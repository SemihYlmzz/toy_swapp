import 'dart:convert';

import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:remote_config_api/remote_config_api.dart';

class FirebaseRemoteConfigApi extends RemoteConfigApi {
  FirebaseRemoteConfigApi({
    required FirebaseRemoteConfig firebaseRemoteConfig,
  }) : _firebaseRemoteConfig = firebaseRemoteConfig;

  // Instances
  final FirebaseRemoteConfig _firebaseRemoteConfig;

  @override
  Map<String,dynamic> getJson(String key) {
    final encodedJson = _firebaseRemoteConfig.getString(key);
    return jsonDecode(encodedJson) as Map<String, dynamic>;
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
