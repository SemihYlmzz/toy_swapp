import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:permission_service/permission_service.dart';

part 'permissions_status.freezed.dart';
part 'permissions_status.g.dart';

@freezed
class PermissionsStatus with _$PermissionsStatus {
  factory PermissionsStatus({
    required PermissionState camera,
    required PermissionState location,
    required PermissionState photos,
    required PermissionState storage,
  }) = _PermissionsStatus;

  factory PermissionsStatus.fromJson(Map<String, Object?> json) =>
      _$PermissionsStatusFromJson(json);
}
