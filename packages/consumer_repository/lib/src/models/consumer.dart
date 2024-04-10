import 'package:consumer_repository/consumer_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'consumer.freezed.dart';
part 'consumer.g.dart';

@freezed
class Consumer with _$Consumer {
  const factory Consumer({
    required String authId,
    required String firstName,
    required String lastName,
    required CurrentLocation currentLocation,
    required AvatarUrls avatarUrls,
    required Counters counters,
    required bool isDeletingAccount,
    String? email,
  }) = _Consumer;

  factory Consumer.fromJson(Map<String, Object?> json) => _$ConsumerFromJson(
        json,
      );
}
