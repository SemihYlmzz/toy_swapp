import 'package:freezed_annotation/freezed_annotation.dart';
import 'models.dart';

part 'app_metadata.freezed.dart';
part 'app_metadata.g.dart';

@freezed
class AppMetadata with _$AppMetadata {
  factory AppMetadata({
    required TermsVersions termsVersions,
    required AppVersion appVersion,
  }) = _AppMetadata;

  factory AppMetadata.fromJson(Map<String, Object?> json) =>
      _$AppMetadataFromJson(json);
}
