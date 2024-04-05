import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_preferences.freezed.dart';
part 'app_preferences.g.dart';

@freezed
class AppPreferences with _$AppPreferences {
  const factory AppPreferences({
    @Default(true) bool isVibratable,
    @Default(ThemeMode.system) ThemeMode themeMode,
    DateTime? termsOfUseAcceptedDate,
    String? languageCode,
  }) = _AppPreferences;

  factory AppPreferences.fromJson(Map<String, Object?> json) =>
      _$AppPreferencesFromJson(
        json,
      );
}
