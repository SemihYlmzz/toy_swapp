// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_user_preferences.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CurrentUserPreferencesImpl _$$CurrentUserPreferencesImplFromJson(
        Map<String, dynamic> json) =>
    _$CurrentUserPreferencesImpl(
      isVibratable: json['isVibratable'] as bool? ?? true,
      themeMode: $enumDecodeNullable(_$ThemeModeEnumMap, json['themeMode']) ??
          ThemeMode.system,
      isTermsOfUseAccepted: json['isTermsOfUseAccepted'] as bool? ?? false,
      languageCode: json['languageCode'] as String?,
    );

Map<String, dynamic> _$$CurrentUserPreferencesImplToJson(
        _$CurrentUserPreferencesImpl instance) =>
    <String, dynamic>{
      'isVibratable': instance.isVibratable,
      'themeMode': _$ThemeModeEnumMap[instance.themeMode]!,
      'isTermsOfUseAccepted': instance.isTermsOfUseAccepted,
      'languageCode': instance.languageCode,
    };

const _$ThemeModeEnumMap = {
  ThemeMode.system: 'system',
  ThemeMode.light: 'light',
  ThemeMode.dark: 'dark',
};
