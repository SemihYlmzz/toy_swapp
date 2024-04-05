import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_metadata.freezed.dart';
part 'app_metadata.g.dart';

@freezed
class AppMetadata with _$AppMetadata {
  factory AppMetadata({
    required DateTime termsLastUpdatedDate,
    required String appVersion,
  }) = _AppMetadata;

  factory AppMetadata.fromJson(Map<String, Object?> json) =>
      _$AppMetadataFromJson(json);
}
