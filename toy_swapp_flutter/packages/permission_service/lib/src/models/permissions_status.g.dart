// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'permissions_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PermissionsStatusImpl _$$PermissionsStatusImplFromJson(
        Map<String, dynamic> json) =>
    _$PermissionsStatusImpl(
      camera: $enumDecode(_$PermissionStateEnumMap, json['camera']),
      location: $enumDecode(_$PermissionStateEnumMap, json['location']),
      photos: $enumDecode(_$PermissionStateEnumMap, json['photos']),
      storage: $enumDecode(_$PermissionStateEnumMap, json['storage']),
    );

Map<String, dynamic> _$$PermissionsStatusImplToJson(
        _$PermissionsStatusImpl instance) =>
    <String, dynamic>{
      'camera': _$PermissionStateEnumMap[instance.camera]!,
      'location': _$PermissionStateEnumMap[instance.location]!,
      'photos': _$PermissionStateEnumMap[instance.photos]!,
      'storage': _$PermissionStateEnumMap[instance.storage]!,
    };

const _$PermissionStateEnumMap = {
  PermissionState.requestable: 'requestable',
  PermissionState.granted: 'granted',
  PermissionState.permanentlyDenied: 'permanentlyDenied',
};
