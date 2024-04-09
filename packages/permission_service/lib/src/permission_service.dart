import 'package:permission_handler/permission_handler.dart';

class PermissionService {
  const PermissionService();

  Future<void> initPermissions() async {}

  Future<void> requestPhotosPermission() async {
    final status = await Permission.photos.request();
  }
}
