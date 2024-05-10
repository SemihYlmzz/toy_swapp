import 'package:app_metadata_repository/app_metadata_repository.dart';
import 'package:app_preferences_repository/app_preferences_repository.dart';
import 'package:device_metadata_repository/device_metadata_repository.dart';
import 'package:go_router/go_router.dart';

class Instances {
  const Instances({
    required this.goRouter,
    required this.appPreferences,
    required this.appMetadata,
    required this.deviceMetadata,
  });
  final GoRouter goRouter;
  final AppPreferences appPreferences;
  final AppMetadata appMetadata;
  final DeviceMetadata deviceMetadata;
}
