import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';

import '../device_metadata_repository.dart';

class DeviceMetadataRepository {
  DeviceMetadataRepository({
    DeviceInfoPlugin? deviceInfoPlugin,
  }) : _deviceInfoPlugin = deviceInfoPlugin ?? DeviceInfoPlugin();

  final DeviceInfoPlugin _deviceInfoPlugin;

  Future<DeviceMetadata> getDeviceMetadata() async {
    AndroidInformation? androidInformation;

    // Ensure Device Android
    if (Platform.isAndroid) {
      // Get Android Device Info
      final androidInfo = await _deviceInfoPlugin.androidInfo;
      // Set Android Device Info
      androidInformation = AndroidInformation(
        versionSdkNumber: androidInfo.version.sdkInt,
      );
    }

    return DeviceMetadata(
      androidInformation: androidInformation,
    );
  }
}
