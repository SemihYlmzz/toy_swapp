// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_metadata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppMetadataImpl _$$AppMetadataImplFromJson(Map<String, dynamic> json) =>
    _$AppMetadataImpl(
      termsVersions:
          TermsVersions.fromJson(json['termsVersions'] as Map<String, dynamic>),
      appVersion:
          AppVersion.fromJson(json['appVersion'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AppMetadataImplToJson(_$AppMetadataImpl instance) =>
    <String, dynamic>{
      'termsVersions': instance.termsVersions,
      'appVersion': instance.appVersion,
    };
