// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'terms_versions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TermsVersionsImpl _$$TermsVersionsImplFromJson(Map<String, dynamic> json) =>
    _$TermsVersionsImpl(
      termsReleaseNumber: json['termsReleaseNumber'] as int,
      isReleasedTermsUrgent: json['isReleasedTermsUrgent'] as bool,
      termsOfServiceUrl: json['termsOfServiceUrl'] as String,
      devangsPrivacyPolicyUrl: json['devangsPrivacyPolicyUrl'] as String,
      toySwappPrivacyPolicyUrl: json['toySwappPrivacyPolicyUrl'] as String,
    );

Map<String, dynamic> _$$TermsVersionsImplToJson(_$TermsVersionsImpl instance) =>
    <String, dynamic>{
      'termsReleaseNumber': instance.termsReleaseNumber,
      'isReleasedTermsUrgent': instance.isReleasedTermsUrgent,
      'termsOfServiceUrl': instance.termsOfServiceUrl,
      'devangsPrivacyPolicyUrl': instance.devangsPrivacyPolicyUrl,
      'toySwappPrivacyPolicyUrl': instance.toySwappPrivacyPolicyUrl,
    };
