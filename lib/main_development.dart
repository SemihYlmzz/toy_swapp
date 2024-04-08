import 'package:app_metadata_repository/app_metadata_repository.dart';
import 'package:app_preferences_repository/app_preferences_repository.dart';
import 'package:auth_repository/auth_repository.dart';
import 'package:flutter/material.dart';
import 'package:toy_swapp/router/app_router.dart';

import 'app/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Repositories
  final authRepository = await AuthRepositoryInitializer.initialize();
  final appPreferencesRepository =
      await AppPreferencesRepositoryInitializer.initialize();
  final appMetadataRepository =
      await AppMetadataRepositoryInitializer.initialize();
  // Instances
  final routerConfig = AppRouter().router(authRepository.isSignedInStream());
  final appPreferences = await appPreferencesRepository.read();
  final appMetadata = await appMetadataRepository.read();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AppScreen(
        appPreferences: appPreferences,
        appMetadata: appMetadata,
        appMetadataRepository: appMetadataRepository,
        appPreferencesRepository: appPreferencesRepository,
        authRepository: authRepository,
        routerConfig: routerConfig,
      ),
    ),
  );
}
