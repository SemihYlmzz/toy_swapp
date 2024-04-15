import 'package:app_metadata_repository/app_metadata_repository.dart';
import 'package:app_preferences_repository/app_preferences_repository.dart';
import 'package:auth_repository/auth_repository.dart';
import 'package:consumer_repository/consumer_repository.dart';
import 'package:device_metadata_repository/device_metadata_repository.dart';
import 'models/models.dart';

class RepositoryDependencies {
  const RepositoryDependencies();

   Future<Repositories> init() async {
    final authRepository = await AuthRepositoryInitializer.initialize();
    final appPreferencesRepository =
        await AppPreferencesRepositoryInitializer.initialize();
    final appMetadataRepository =
        await AppMetadataRepositoryInitializer.initialize();
    final consumerRepository = await ConsumerRepositoryInitializer.initialize();
    final deviceMetadataRepository = DeviceMetadataRepository();

    return Repositories(
      deviceMetadata: deviceMetadataRepository,
      consumer: consumerRepository,
      appMetadata: appMetadataRepository,
      appPreferences: appPreferencesRepository,
      auth: authRepository,
    );
  }
}
