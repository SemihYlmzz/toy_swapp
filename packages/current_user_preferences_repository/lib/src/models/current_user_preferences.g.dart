// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_user_preferences.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CurrentUserPreferencesImpl _$$CurrentUserPreferencesImplFromJson(
        Map<String, dynamic> json) =>
    _$CurrentUserPreferencesImpl(
      isVibratable: json['isVibratable'] as bool? ?? true,
      language: $enumDecodeNullable(_$LanguageEnumMap, json['language']) ??
          Language.deviceLanguage,
      themeMode: $enumDecodeNullable(_$ThemeModeEnumMap, json['themeMode']) ??
          ThemeMode.system,
      isTermsOfUseAccepted: json['isTermsOfUseAccepted'] as bool? ?? false,
    );

Map<String, dynamic> _$$CurrentUserPreferencesImplToJson(
        _$CurrentUserPreferencesImpl instance) =>
    <String, dynamic>{
      'isVibratable': instance.isVibratable,
      'language': _$LanguageEnumMap[instance.language]!,
      'themeMode': _$ThemeModeEnumMap[instance.themeMode]!,
      'isTermsOfUseAccepted': instance.isTermsOfUseAccepted,
    };

const _$LanguageEnumMap = {
  Language.deviceLanguage: 'deviceLanguage',
  Language.english: 'english',
  Language.turkish: 'turkish',
};

const _$ThemeModeEnumMap = {
  ThemeMode.system: 'system',
  ThemeMode.light: 'light',
  ThemeMode.dark: 'dark',
};
