import 'package:image_service/image_service.dart';
import 'package:location_service/location_service.dart';
import 'package:permission_service/permission_service.dart';
import 'models/models.dart';

class ServiceDependencies {
  const ServiceDependencies();

   Future<Services> init({
    required int? androidVersionSdkNumber,
  }) async {
    // Services
    final permissionService = await PermissionService(
      androidVersionSdkNumber: androidVersionSdkNumber,
    ).initPermissions();
    final imageService = ImageService();
    const locationService = LocationService();

    return Services(
      permission: permissionService,
      image: imageService,
      location: locationService,
    );
  }
}
