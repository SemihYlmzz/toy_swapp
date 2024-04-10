import 'package:device_metadata_repository/src/models/android_information.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'device_metadata.freezed.dart';
part 'device_metadata.g.dart';

@freezed
class DeviceMetadata with _$DeviceMetadata {
  factory DeviceMetadata({
    required AndroidInformation? androidInformation,
  }) = _DeviceMetadata;

  factory DeviceMetadata.fromJson(Map<String, Object?> json) =>
      _$DeviceMetadataFromJson(json);
}
