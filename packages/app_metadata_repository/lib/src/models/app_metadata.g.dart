// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_metadata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppMetadataImpl _$$AppMetadataImplFromJson(Map<String, dynamic> json) =>
    _$AppMetadataImpl(
      termsLastUpdatedDate:
          DateTime.parse(json['termsLastUpdatedDate'] as String),
      appVersion: json['appVersion'] as String,
    );

Map<String, dynamic> _$$AppMetadataImplToJson(_$AppMetadataImpl instance) =>
    <String, dynamic>{
      'termsLastUpdatedDate': instance.termsLastUpdatedDate.toIso8601String(),
      'appVersion': instance.appVersion,
    };
