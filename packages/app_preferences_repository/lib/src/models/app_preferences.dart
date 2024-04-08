import 'package:app_preferences_repository/src/models/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_preferences.freezed.dart';
part 'app_preferences.g.dart';

@freezed
class AppPreferences with _$AppPreferences {
  const factory AppPreferences({
    TermsOfUseAcceptance? termsOfUseAcceptance,
  }) = _AppPreferences;

  factory AppPreferences.fromJson(Map<String, Object?> json) =>
      _$AppPreferencesFromJson(json);
}
