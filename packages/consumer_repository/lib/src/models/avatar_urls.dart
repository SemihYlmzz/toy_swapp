import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'avatar_urls.freezed.dart';
part 'avatar_urls.g.dart';

@freezed
class AvatarUrls with _$AvatarUrls {
  const factory AvatarUrls({
    required String url128,
    required String url256,
    required String url512,
    required String url1024,
  }) = _AvatarUrls;

  factory AvatarUrls.fromJson(Map<String, Object?> json) =>
      _$AvatarUrlsFromJson(json);
  factory AvatarUrls.empty() => const AvatarUrls(
        url128: '',
        url256: '',
        url512: '',
        url1024: '',
      );
}
