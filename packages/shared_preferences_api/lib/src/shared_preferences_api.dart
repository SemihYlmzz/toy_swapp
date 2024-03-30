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
    try {
      final dataJsonString = jsonEncode(data);
      await _sharedPreferences.setString(key, dataJsonString);
    } catch (exception) {
      throw Exception('Error creating data in SharedPreferences');
    }
  }

  @override
  Future<Map<String, dynamic>?> read(
    String key,
  ) async {
    try {
      final dataJsonString = _sharedPreferences.getString(key);
      if (dataJsonString == null) {
        return null;
      }

      final dataJson = jsonDecode(dataJsonString) as Map<String, dynamic>;
      return dataJson;
    } catch (exception) {
      throw Exception('Error reading data from SharedPreferences');
    }
  }

  @override
  Future<void> update(
    String key, {
    required Map<String, dynamic> data,
  }) async {
    try {
      final encodedData = jsonEncode(data);
      await _sharedPreferences.setString(key, encodedData);
    } catch (exception) {
      throw const LocalDatabaseException.unknown();
    }
  }

  @override
  Future<void> delete() async {}
}
