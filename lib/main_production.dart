import 'package:app_metadata_repository/app_metadata_repository.dart';
import 'package:app_preferences_repository/app_preferences_repository.dart';
import 'package:auth_repository/auth_repository.dart';
import 'package:device_metadata_repository/device_metadata_repository.dart';
import 'package:flutter/material.dart';
import 'package:image_service/image_service.dart';
import 'package:permission_service/permission_service.dart';
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
  final deviceMetadataRepository = DeviceMetadataRepository();
  // Instances
  final routerConfig = AppRouter().router(authRepository.isSignedInStream());
  final appPreferences = await appPreferencesRepository.read();
  final appMetadata = await appMetadataRepository.read();
  final deviceMetadata = await deviceMetadataRepository.getDeviceMetadata();

  // Services
  final permissionService = await PermissionService(
    androidVersionSdkNumber:
        deviceMetadata.androidInformation?.versionSdkNumber,
  ).initPermissions();
  final imageService = ImageService();

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AppScreen(
        permissionService: permissionService,
        imageService: imageService,
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
