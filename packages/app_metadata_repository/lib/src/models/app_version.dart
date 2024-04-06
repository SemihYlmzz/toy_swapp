import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_version.freezed.dart';
part 'app_version.g.dart';

@freezed
class AppVersion with _$AppVersion {
  factory AppVersion({
    required String appVersion,
    required int buildNumber,
    required bool isOptional,
  }) = _AppVersion;

  factory AppVersion.fromJson(Map<String, Object?> json) =>
      _$AppVersionFromJson(json);
}
