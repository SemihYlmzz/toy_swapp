// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_preferences.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppPreferencesImpl _$$AppPreferencesImplFromJson(Map<String, dynamic> json) =>
    _$AppPreferencesImpl(
      isVibratable: json['isVibratable'] as bool? ?? true,
      themeMode: $enumDecodeNullable(_$ThemeModeEnumMap, json['themeMode']) ??
          ThemeMode.system,
      termsOfUseAcceptance: json['termsOfUseAcceptance'] == null
          ? null
          : TermsOfUseAcceptance.fromJson(
              json['termsOfUseAcceptance'] as Map<String, dynamic>),
      languageCode: json['languageCode'] as String?,
    );

Map<String, dynamic> _$$AppPreferencesImplToJson(
        _$AppPreferencesImpl instance) =>
    <String, dynamic>{
      'isVibratable': instance.isVibratable,
      'themeMode': _$ThemeModeEnumMap[instance.themeMode]!,
      'termsOfUseAcceptance': instance.termsOfUseAcceptance,
      'languageCode': instance.languageCode,
    };

const _$ThemeModeEnumMap = {
  ThemeMode.system: 'system',
  ThemeMode.light: 'light',
  ThemeMode.dark: 'dark',
};
