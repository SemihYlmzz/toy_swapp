import 'package:freezed_annotation/freezed_annotation.dart';
import 'models.dart';

part 'app_metadata.freezed.dart';
part 'app_metadata.g.dart';

@freezed
class AppMetadata with _$AppMetadata {
  factory AppMetadata({
    required TermsVersions termsVersions,
    required String appName,
    required String version,
    required int coreVersionNumber,
  }) = _AppMetadata;

  factory AppMetadata.fromJson(Map<String, Object?> json) =>
      _$AppMetadataFromJson(json);
}
