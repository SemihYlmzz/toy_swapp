import 'dart:async';

import 'package:current_user_preferences_repository/src/constants/strings.dart';
import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:local_database_api/local_database_api.dart';

import '../current_user_preferences_repository_api.dart';

class CurrentUserPreferencesRepository {
  CurrentUserPreferencesRepository({
    required this.localDatabaseApi,
  }) {
    currentUserPreferencesStream.listen((event) {
      currentUserPreferences = event;
    });
  }
  // Data Manipulation
  final _currentUserStreamController =
      StreamController<CurrentUserPreferences>.broadcast();

  Stream<CurrentUserPreferences> get currentUserPreferencesStream =>
      _currentUserStreamController.stream;

  CurrentUserPreferences? currentUserPreferences;

  // Data Bases
  final LocalDatabaseApi localDatabaseApi;

  // Functions
  Future<CurrentUserPreferences> create() async {
    const creatableUserPreferences = CurrentUserPreferences();
    await localDatabaseApi.create(
      CurrentUserPreferencesRepositoryStrings.localDatabaseKey,
      data: creatableUserPreferences.toJson(),
    );
    _currentUserStreamController.sink.add(creatableUserPreferences);
    return creatableUserPreferences;
  }

  Future<CurrentUserPreferences> read() async {
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
    return currentUserPreferences;
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

  Future<void> updateLanguageCode({required String newLanguageCode}) async {
    if (currentUserPreferences == null) {
      // Exception: Need to read the current user preferences before updating
      return;
    }
    final updatedPreferences = currentUserPreferences!.copyWith(
      languageCode: newLanguageCode,
    );
    await localDatabaseApi.update(
      CurrentUserPreferencesRepositoryStrings.localDatabaseKey,
      data: updatedPreferences.toJson(),
    );
    _currentUserStreamController.sink.add(updatedPreferences);
  }

  Future<void> acceptTermsOfUse() async {
    if (currentUserPreferences == null) {
      return;
    }
    final updatedPreferences = currentUserPreferences!.copyWith(
      isTermsOfUseAccepted: true,
    );
    await localDatabaseApi.update(
      CurrentUserPreferencesRepositoryStrings.localDatabaseKey,
      data: updatedPreferences.toJson(),
    );
    _currentUserStreamController.sink.add(updatedPreferences);
  }

  Future<Either<CurrentUserPreferencesRepositoryFailure, Unit>>
      updateIsVibratable({required bool updatedIsVibratable}) async {
    try {
      if (currentUserPreferences == null) {
        // Exception: Need to read the current user preferences before updating
        return const Left(
          CurrentUserPreferencesRepositoryFailure.initRequired(),
        );
      }
      final updatedPreferences = currentUserPreferences!.copyWith(
        isVibratable: updatedIsVibratable,
      );
      await localDatabaseApi.update(
        CurrentUserPreferencesRepositoryStrings.localDatabaseKey,
        data: updatedPreferences.toJson(),
      );
      _currentUserStreamController.sink.add(updatedPreferences);
      return const Right(unit);
    } on LocalDatabaseException catch (exception) {
      return exception.map(
        unknown: (value) => const Left(
          CurrentUserPreferencesRepositoryFailure.unknown(),
        ),
      );
    }
  }
}
