import 'package:app_metadata_repository/app_metadata_repository.dart';
import 'package:app_preferences_repository/app_preferences_repository_api.dart';

class Repositories {
  Repositories({
    required this.appPreferences,
    required this.appMetadata,
  });

  final AppPreferencesRepository appPreferences;
  final AppMetadataRepository appMetadata;
}
