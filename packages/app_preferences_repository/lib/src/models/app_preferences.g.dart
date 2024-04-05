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
      termsOfUseAcceptedDate: json['termsOfUseAcceptedDate'] == null
          ? null
          : DateTime.parse(json['termsOfUseAcceptedDate'] as String),
      languageCode: json['languageCode'] as String?,
    );

Map<String, dynamic> _$$AppPreferencesImplToJson(
        _$AppPreferencesImpl instance) =>
    <String, dynamic>{
      'isVibratable': instance.isVibratable,
      'themeMode': _$ThemeModeEnumMap[instance.themeMode]!,
      'termsOfUseAcceptedDate':
          instance.termsOfUseAcceptedDate?.toIso8601String(),
      'languageCode': instance.languageCode,
    };

const _$ThemeModeEnumMap = {
  ThemeMode.system: 'system',
  ThemeMode.light: 'light',
  ThemeMode.dark: 'dark',
};
