import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'toy_image_urls.freezed.dart';
part 'toy_image_urls.g.dart';

@freezed
class ToyImageUrls with _$ToyImageUrls {
  const factory ToyImageUrls({
    required String url1024,
    required String url128,
    required String url256,
    required String url512,
  }) = _ToyImageUrls;

  factory ToyImageUrls.fromJson(Map<String, Object?> json) =>
      _$ToyImageUrlsFromJson(json);
}
