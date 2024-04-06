// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_version.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppVersionImpl _$$AppVersionImplFromJson(Map<String, dynamic> json) =>
    _$AppVersionImpl(
      appVersion: json['appVersion'] as String,
      buildNumber: json['buildNumber'] as int,
      isOptional: json['isOptional'] as bool,
    );

Map<String, dynamic> _$$AppVersionImplToJson(_$AppVersionImpl instance) =>
    <String, dynamic>{
      'appVersion': instance.appVersion,
      'buildNumber': instance.buildNumber,
      'isOptional': instance.isOptional,
    };
