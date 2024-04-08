// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_preferences.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppPreferencesImpl _$$AppPreferencesImplFromJson(Map<String, dynamic> json) =>
    _$AppPreferencesImpl(
      termsOfUseAcceptance: json['termsOfUseAcceptance'] == null
          ? null
          : TermsOfUseAcceptance.fromJson(
              json['termsOfUseAcceptance'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AppPreferencesImplToJson(
        _$AppPreferencesImpl instance) =>
    <String, dynamic>{
      'termsOfUseAcceptance': instance.termsOfUseAcceptance,
    };
