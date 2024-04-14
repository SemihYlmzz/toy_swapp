import 'dart:async';
import 'dart:convert';

import 'package:fpdart/fpdart.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:toy_swapp/errors/errors.dart';

import '../app_preferences_repository.dart';
import 'constants/constants.dart';

class AppPreferencesRepository {
  AppPreferencesRepository({
    required SharedPreferences sharedPreferences,
  }) : _sharedPreferences = sharedPreferences {
    _streamController.stream.listen((event) {
      appPreferences = event;
    });
  }

  // Instances
  final SharedPreferences _sharedPreferences;

  // Data Manipulation
  final _streamController = StreamController<AppPreferences>.broadcast();

  Stream<AppPreferences> get appPreferencesStream => _streamController.stream;

  AppPreferences appPreferences = AppPreferences.empty();

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
    const creatableAppPreferences = AppPreferences(note: 'Take Note');

    await _sharedPreferences.setString(
      AppPreferencesRepositoryStrings.localDatabaseKey,
      jsonEncode(creatableAppPreferences.toJson()),
    );
    _streamController.sink.add(creatableAppPreferences);
    return creatableAppPreferences;
  }

  FutureUnit acceptTermsOfUse({
    required int appCoreVersionNumber,
    required int termsReleaseNumber,
  }) async {
    try {
      final updatedPreferences = appPreferences.copyWith(
        termsAcceptance: TermsAcceptance(
          appCoreVersionNumber: appCoreVersionNumber,
          termsReleaseNumber: termsReleaseNumber,
        ),
      );
      await _sharedPreferences.setString(
        AppPreferencesRepositoryStrings.localDatabaseKey,
        jsonEncode(updatedPreferences.toJson()),
      );
      _streamController.sink.add(updatedPreferences);
      return const Right(unit);
    } catch (exception) {
      return Left(AppPreferencesRepositoryUnknown());
    }
  }

  FutureUnit updateNote({
    required String note,
  }) async {
    try {
      final updatedPreferences = appPreferences.copyWith(
        note: note,
      );
      await _sharedPreferences.setString(
        AppPreferencesRepositoryStrings.localDatabaseKey,
        jsonEncode(updatedPreferences.toJson()),
      );
      _streamController.sink.add(updatedPreferences);
      return const Right(unit);
    } catch (exception) {
      return Left(AppPreferencesRepositoryUnknown());
    }
  }
}
