import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'counters.freezed.dart';
part 'counters.g.dart';

@freezed
class Counters with _$Counters {
  const factory Counters({
    required int ownedToy,
    required int switchChance,
    required int switchs,
  }) = _Counters;

  factory Counters.fromJson(Map<String, Object?> json) =>
      _$CountersFromJson(json);
}
