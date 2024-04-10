// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_metadata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeviceMetadataImpl _$$DeviceMetadataImplFromJson(Map<String, dynamic> json) =>
    _$DeviceMetadataImpl(
      androidInformation: json['androidInformation'] == null
          ? null
          : AndroidInformation.fromJson(
              json['androidInformation'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DeviceMetadataImplToJson(
        _$DeviceMetadataImpl instance) =>
    <String, dynamic>{
      'androidInformation': instance.androidInformation,
    };
