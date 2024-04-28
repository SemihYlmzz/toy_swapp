import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../toy_repository.dart';

part 'toy_details.freezed.dart';
part 'toy_details.g.dart';

@freezed
class ToyDetails with _$ToyDetails {
  const factory ToyDetails({

  required ToyAge age,
  required ToyGender gender,
  required ToyCondition condition,
  }) = _ToyDetails;

  factory ToyDetails.fromJson(Map<String, Object?> json) =>
      _$ToyDetailsFromJson(json);
}
