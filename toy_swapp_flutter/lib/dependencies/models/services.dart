import 'package:image_service/image_service.dart';
import 'package:location_service/location_service.dart';
import 'package:permission_service/permission_service.dart';

class Services {
  const Services({
    required this.permission,
    required this.image,
    required this.location,
  });
  final PermissionService permission;
  final ImageService image;
  final LocationService location;
}
