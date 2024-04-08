// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_metadata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppMetadataImpl _$$AppMetadataImplFromJson(Map<String, dynamic> json) =>
    _$AppMetadataImpl(
      termsVersions:
          TermsVersions.fromJson(json['termsVersions'] as Map<String, dynamic>),
      appName: json['appName'] as String,
      version: json['version'] as String,
      coreVersionNumber: json['coreVersionNumber'] as int,
    );

Map<String, dynamic> _$$AppMetadataImplToJson(_$AppMetadataImpl instance) =>
    <String, dynamic>{
      'termsVersions': instance.termsVersions,
      'appName': instance.appName,
      'version': instance.version,
      'coreVersionNumber': instance.coreVersionNumber,
    };
