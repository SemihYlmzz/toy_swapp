import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'current_user_preferences.freezed.dart';
part 'current_user_preferences.g.dart';

@freezed
class CurrentUserPreferences with _$CurrentUserPreferences {
  const factory CurrentUserPreferences({
    @Default(true) bool isVibratable,
    @Default(ThemeMode.system) ThemeMode themeMode,
    @Default(false) bool isTermsOfUseAccepted,
    String? languageCode,
  }) = _CurrentUserPreferences;

  factory CurrentUserPreferences.fromJson(Map<String, Object?> json) =>
      _$CurrentUserPreferencesFromJson(
        json,
      );
}
