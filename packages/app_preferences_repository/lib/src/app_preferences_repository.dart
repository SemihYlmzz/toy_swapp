import 'dart:async';
import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../app_preferences_repository.dart';
import 'constants/constants.dart';

class AppPreferencesRepository {
  AppPreferencesRepository({
    required SharedPreferences sharedPreferences,
  }) : _sharedPreferences = sharedPreferences;

  // Instances
  final SharedPreferences _sharedPreferences;

  // Data Manipulation
  final _streamController = StreamController<AppPreferences>.broadcast();

  Stream<AppPreferences> get appPreferencesStream => _streamController.stream;

  AppPreferences? appPreferences;

  // Functions
  Future<AppPreferences> read() async {
    final appPreferencesEncodedJson = _sharedPreferences.getString(
      AppPreferencesRepositoryStrings.localDatabaseKey,
    );
    if (appPreferencesEncodedJson == null) {
      return create();
    }

    final appPreferencesJson = jsonDecode(
      appPreferencesEncodedJson,
    ) as Map<String, dynamic>;

    final appPreferences = AppPreferences.fromJson(
      appPreferencesJson,
    );

    _streamController.sink.add(appPreferences);
    return appPreferences;
  }

  Future<AppPreferences> create() async {
    const creatableAppPreferences = AppPreferences();
    await _sharedPreferences.setString(
      AppPreferencesRepositoryStrings.localDatabaseKey,
      jsonEncode(creatableAppPreferences.toJson()),
    );
    _streamController.sink.add(creatableAppPreferences);
    return creatableAppPreferences;
  }

  Future<void> acceptTermsOfUse({
    required int acceptedTermsReleaseNumber,
    required int acceptedAppBuildNumber,
  }) async {
    if (appPreferences == null) {
      return;
    }
    final updatedPreferences = appPreferences!.copyWith(
      termsOfUseAcceptance: TermsOfUseAcceptance(
        acceptedTermsReleaseNumber: acceptedTermsReleaseNumber,
        acceptedAppBuildNumber: acceptedAppBuildNumber,
      ),
    );
    await _sharedPreferences.setString(
      AppPreferencesRepositoryStrings.localDatabaseKey,
      jsonEncode(updatedPreferences.toJson()),
    );
    _streamController.sink.add(updatedPreferences);
    return;
  }
}
