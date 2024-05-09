import 'package:app_metadata_repository/app_metadata_repository.dart';
import 'package:app_preferences_repository/app_preferences_repository.dart';
import 'package:auth_repository/auth_repository.dart';
import 'package:consumer_repository/consumer_repository.dart';
import 'package:device_metadata_repository/device_metadata_repository.dart';
import 'package:support_repository/support_repository.dart';
import 'package:toy_repository/toy_repository.dart';

class Repositories {
  const Repositories({
    required this.deviceMetadata,
    required this.consumer,
    required this.appMetadata,
    required this.appPreferences,
    required this.auth,
    required this.toy,
    required this.support,
  });
  final DeviceMetadataRepository deviceMetadata;
  final ConsumerRepository consumer;
  final AppMetadataRepository appMetadata;
  final AppPreferencesRepository appPreferences;
  final AuthRepository auth;
  final ToyRepository toy;
  final SupportRepository support;
}
