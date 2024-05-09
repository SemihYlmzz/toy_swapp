import 'package:app_metadata_repository/app_metadata_repository.dart';
import 'package:app_preferences_repository/app_preferences_repository.dart';
import 'package:auth_repository/auth_repository.dart';
import 'package:consumer_repository/consumer_repository.dart';
import 'package:device_metadata_repository/device_metadata_repository.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:support_repository/support_repository.dart';
import 'package:toy_repository/toy_repository.dart';

import 'models/models.dart';

class RepositoryDependencies {
  const RepositoryDependencies({
    required FirebaseOptions firebaseOptions,
  }) : _firebaseOptions = firebaseOptions;
  final FirebaseOptions _firebaseOptions;
  Future<Repositories> init({
    required Apis apis,
  }) async {
    final authRepository = await AuthRepositoryInitializer.initialize(
      firebaseOptions: _firebaseOptions,
    );
    final appPreferencesRepository =
        await AppPreferencesRepositoryInitializer.initialize();

    final appMetadataRepository =
        await AppMetadataRepositoryInitializer.initialize(
      firebaseOptions: _firebaseOptions,
    );

    final deviceMetadataRepository = DeviceMetadataRepository();

    final consumerRepository = ConsumerRepository(
      cloudStorage: apis.cloudStorage,
      client: apis.client,
    );
    final toyRepository = ToyRepository(
      cloudStorage: apis.cloudStorage,
      client: apis.client,
    );
    final supportRepository = SupportRepository(
      client: apis.client,
    );

    return Repositories(
      deviceMetadata: deviceMetadataRepository,
      consumer: consumerRepository,
      appMetadata: appMetadataRepository,
      appPreferences: appPreferencesRepository,
      auth: authRepository,
      toy: toyRepository,
      support: supportRepository,
    );
  }
}
