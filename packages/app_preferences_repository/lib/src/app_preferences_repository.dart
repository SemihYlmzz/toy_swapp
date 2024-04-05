import 'dart:async';

import 'package:app_preferences_repository/src/constants/strings.dart';
import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:local_database_api/local_database_api.dart';

import '../app_preferences_repository_api.dart';

class AppPreferencesRepository {
  AppPreferencesRepository({
    required this.localDatabaseApi,
  }) {
    appPreferencesStream.listen((event) {
      appPreferences = event;
    });
  }
  // Data Manipulation
  final _streamController = StreamController<AppPreferences>.broadcast();

  Stream<AppPreferences> get appPreferencesStream => _streamController.stream;

  AppPreferences? appPreferences;

  // Data Bases
  final LocalDatabaseApi localDatabaseApi;

  // Functions
  Future<AppPreferences> create() async {
    const creatableAppPreferences = AppPreferences();
    await localDatabaseApi.create(
      AppPreferencesRepositoryStrings.localDatabaseKey,
      data: creatableAppPreferences.toJson(),
    );
    _streamController.sink.add(creatableAppPreferences);
    return creatableAppPreferences;
  }

  Future<AppPreferences> read() async {
    final appPreferencesJson = await localDatabaseApi.read(
      AppPreferencesRepositoryStrings.localDatabaseKey,
    );

    if (appPreferencesJson == null) {
      return create();
    }

    final appPreferences = AppPreferences.fromJson(
      appPreferencesJson,
    );
    _streamController.sink.add(appPreferences);
    return appPreferences;
  }

  Future<void> updateTheme({required ThemeMode updatedThemeMode}) async {
    if (appPreferences == null) {
      // Exception: Need to read the app preferences before updating
      return;
    }
    final updatedPreferences =
        appPreferences!.copyWith(themeMode: updatedThemeMode);
    await localDatabaseApi.update(
      AppPreferencesRepositoryStrings.localDatabaseKey,
      data: updatedPreferences.toJson(),
    );
    _streamController.sink.add(updatedPreferences);
  }

  Future<void> updateLanguageCode({required String newLanguageCode}) async {
    if (appPreferences == null) {
      // Exception: Need to read the app preferences before updating
      return;
    }
    final updatedPreferences = appPreferences!.copyWith(
      languageCode: newLanguageCode,
    );
    await localDatabaseApi.update(
      AppPreferencesRepositoryStrings.localDatabaseKey,
      data: updatedPreferences.toJson(),
    );
    _streamController.sink.add(updatedPreferences);
  }

  Future<void> acceptTermsOfUse() async {
    if (appPreferences == null) {
      return;
    }
    final updatedPreferences = appPreferences!.copyWith(
      termsOfUseAcceptedDate: DateTime.now(),
    );
    await localDatabaseApi.update(
      AppPreferencesRepositoryStrings.localDatabaseKey,
      data: updatedPreferences.toJson(),
    );
    _streamController.sink.add(updatedPreferences);
  }

  Future<Either<AppPreferencesRepositoryFailure, Unit>> updateIsVibratable({
    required bool updatedIsVibratable,
  }) async {
    try {
      if (appPreferences == null) {
        // Exception: Need to read the app preferences before updating
        return const Left(
          AppPreferencesRepositoryFailure.initRequired(),
        );
      }
      final updatedPreferences = appPreferences!.copyWith(
        isVibratable: updatedIsVibratable,
      );
      await localDatabaseApi.update(
        AppPreferencesRepositoryStrings.localDatabaseKey,
        data: updatedPreferences.toJson(),
      );
      _streamController.sink.add(updatedPreferences);
      return const Right(unit);
    } on LocalDatabaseException catch (exception) {
      return exception.map(
        unknown: (value) => const Left(
          AppPreferencesRepositoryFailure.unknown(),
        ),
      );
    }
  }
}
