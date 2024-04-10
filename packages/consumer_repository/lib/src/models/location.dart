import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'location.freezed.dart';
part 'location.g.dart';

@freezed
class CurrentLocation with _$CurrentLocation {
  const factory CurrentLocation({
    required num latitude,
    required num longitude,
  }) = _CurrentLocation;

  factory CurrentLocation.fromJson(Map<String, Object?> json) =>
      _$CurrentLocationFromJson(json);
}
