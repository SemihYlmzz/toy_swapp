import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../toy_repository.dart';

part 'toy.freezed.dart';
part 'toy.g.dart';

@freezed
class Toy with _$Toy {
  const factory Toy({
    required String ownerAuthId,
    required String id,
    required String name,
    required String description,
    required List<ToyImageUrls> imageUrlList,
    required ToyDetails details,
    required DateTime createdAt,
    required bool isPublic,
    required bool isLocked,
    required List<String> likersConsumerIds,
    required String? safeToPublicMarkerSupportId,
  }) = _Toy;

  factory Toy.fromJson(Map<String, Object?> json) => _$ToyFromJson(
        json,
      );
}
