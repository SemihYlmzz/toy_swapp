import 'package:freezed_annotation/freezed_annotation.dart';

part 'android_information.freezed.dart';
part 'android_information.g.dart';

@freezed
class AndroidInformation with _$AndroidInformation {
  factory AndroidInformation({
    required int versionSdkNumber,
  }) = _AndroidInformation;

  factory AndroidInformation.fromJson(Map<String, Object?> json) =>
      _$AndroidInformationFromJson(json);
}
