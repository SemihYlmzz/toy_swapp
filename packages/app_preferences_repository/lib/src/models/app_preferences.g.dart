// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_preferences.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppPreferencesImpl _$$AppPreferencesImplFromJson(Map<String, dynamic> json) =>
    _$AppPreferencesImpl(
      note: json['note'] as String,
      termsAcceptance: json['termsAcceptance'] == null
          ? null
          : TermsAcceptance.fromJson(
              json['termsAcceptance'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AppPreferencesImplToJson(
        _$AppPreferencesImpl instance) =>
    <String, dynamic>{
      'note': instance.note,
      'termsAcceptance': instance.termsAcceptance,
    };
