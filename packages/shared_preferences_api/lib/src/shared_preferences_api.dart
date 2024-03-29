import 'dart:convert';

import 'package:local_database_api/local_database_api.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesApi extends LocalDatabaseApi {
  const SharedPreferencesApi({
    required SharedPreferences sharedPreferences,
  }) : _sharedPreferences = sharedPreferences;

  final SharedPreferences _sharedPreferences;

  @override
  Future<void> create(
    String key, {
    required Map<String, dynamic> data,
  }) async {
    final encodedPreferences = jsonEncode(data);
    await _sharedPreferences.setString(key, encodedPreferences);
  }

  @override
  Future<Map<String, dynamic>?> read(
    String key,
  ) async {
    final encodedPreferencesModel = _sharedPreferences.getString(key);

    if (encodedPreferencesModel == null) {
      return null;
    }
    return jsonDecode(encodedPreferencesModel) as Map<String, dynamic>;
  }

  @override
  Future<void> update() async {}
  @override
  Future<void> delete() async {}
}
