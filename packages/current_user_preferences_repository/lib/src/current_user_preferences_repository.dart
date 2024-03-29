import 'dart:async';

import 'package:current_user_preferences_repository/src/constants/strings.dart';
import 'package:flutter/material.dart';
import 'package:local_database_api/local_database_api.dart';

import 'enums/enums.dart';
import 'models/current_user_preferences.dart';

class CurrentUserPreferencesRepository {
  CurrentUserPreferencesRepository({
    required this.localDatabaseApi,
  }) {
    currentUserPreferencesStream.listen((event) {
      currentUserPreferences = event;
    });
  }

  // Data Bases
  final LocalDatabaseApi localDatabaseApi;

  // Functions
  Future<void> create() async {
    const creatableUserPreferences = CurrentUserPreferences();
    await localDatabaseApi.create(
      CurrentUserPreferencesRepositoryStrings.localDatabaseKey,
      data: creatableUserPreferences.toJson(),
    );
    _currentUserStreamController.sink.add(creatableUserPreferences);
  }

  Future<void> read() async {
    final currentUserPreferencesJson = await localDatabaseApi.read(
      CurrentUserPreferencesRepositoryStrings.localDatabaseKey,
    );

    if (currentUserPreferencesJson == null) {
      return create();
    }

    final currentUserPreferences = CurrentUserPreferences.fromJson(
      currentUserPreferencesJson,
    );
    _currentUserStreamController.sink.add(currentUserPreferences);
  }

  Future<void> updateTheme({required ThemeMode updatedThemeMode}) async {
    if (currentUserPreferences == null) {
      // Exception: Need to read the current user preferences before updating
      return;
    }
    final updatedPreferences =
        currentUserPreferences!.copyWith(themeMode: updatedThemeMode);
    await localDatabaseApi.update(
      CurrentUserPreferencesRepositoryStrings.localDatabaseKey,
      data: updatedPreferences.toJson(),
    );
    _currentUserStreamController.sink.add(updatedPreferences);
  }

  Future<void> updateLanguage({required Language updatedLanguage}) async {
    if (currentUserPreferences == null) {
      // Exception: Need to read the current user preferences before updating
      return;
    }
    final updatedPreferences =
        currentUserPreferences!.copyWith(language: updatedLanguage);
    await localDatabaseApi.update(
      CurrentUserPreferencesRepositoryStrings.localDatabaseKey,
      data: updatedPreferences.toJson(),
    );
    _currentUserStreamController.sink.add(updatedPreferences);
  }

  Future<void> updateIsVibratable({required bool updatedIsVibratable}) async {
    if (currentUserPreferences == null) {
      // Exception: Need to read the current user preferences before updating
      return;
    }
    final updatedPreferences =
        currentUserPreferences!.copyWith(isVibratable: updatedIsVibratable);
    await localDatabaseApi.update(
      CurrentUserPreferencesRepositoryStrings.localDatabaseKey,
      data: updatedPreferences.toJson(),
    );
    _currentUserStreamController.sink.add(updatedPreferences);
  }

  // Data Manipulation
  final _currentUserStreamController =
      StreamController<CurrentUserPreferences>.broadcast();

  Stream<CurrentUserPreferences> get currentUserPreferencesStream =>
      _currentUserStreamController.stream;

  CurrentUserPreferences? currentUserPreferences;
}
