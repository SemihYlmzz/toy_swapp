import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'models.dart';

part 'app_preferences.freezed.dart';
part 'app_preferences.g.dart';

@freezed
class AppPreferences with _$AppPreferences {
  const factory AppPreferences({
    // Temporary
    required String note,
    // End Temporary
    required bool isVibratable,
    required ThemeMode themeMode,
    TermsAcceptance? termsAcceptance,
  }) = _AppPreferences;

  factory AppPreferences.fromJson(Map<String, Object?> json) =>
      _$AppPreferencesFromJson(json);

  factory AppPreferences.empty() => AppPreferences(
        termsAcceptance: TermsAcceptance.empty(),
        themeMode: ThemeMode.system,
        note: '',
        isVibratable: false,
      );
}
