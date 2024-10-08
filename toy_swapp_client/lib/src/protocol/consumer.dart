/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'protocol.dart' as _i2;

abstract class Consumer implements _i1.SerializableModel {
  Consumer._({
    this.id,
    required this.authId,
    required this.firstName,
    required this.lastName,
    required this.currentLatitude,
    required this.currentLongitude,
    required this.avatarUrl128,
    required this.avatarUrl256,
    required this.avatarUrl512,
    required this.avatarUrl1024,
    required this.toyCount,
    required this.swapCount,
    required this.switchChanceCount,
    required this.isDeletingAccount,
    this.email,
    this.likes,
  });

  factory Consumer({
    int? id,
    required String authId,
    required String firstName,
    required String lastName,
    required double currentLatitude,
    required double currentLongitude,
    required String avatarUrl128,
    required String avatarUrl256,
    required String avatarUrl512,
    required String avatarUrl1024,
    required int toyCount,
    required int swapCount,
    required int switchChanceCount,
    required bool isDeletingAccount,
    String? email,
    List<_i2.Like>? likes,
  }) = _ConsumerImpl;

  factory Consumer.fromJson(Map<String, dynamic> jsonSerialization) {
    return Consumer(
      id: jsonSerialization['id'] as int?,
      authId: jsonSerialization['authId'] as String,
      firstName: jsonSerialization['firstName'] as String,
      lastName: jsonSerialization['lastName'] as String,
      currentLatitude: (jsonSerialization['currentLatitude'] as num).toDouble(),
      currentLongitude:
          (jsonSerialization['currentLongitude'] as num).toDouble(),
      avatarUrl128: jsonSerialization['avatarUrl128'] as String,
      avatarUrl256: jsonSerialization['avatarUrl256'] as String,
      avatarUrl512: jsonSerialization['avatarUrl512'] as String,
      avatarUrl1024: jsonSerialization['avatarUrl1024'] as String,
      toyCount: jsonSerialization['toyCount'] as int,
      swapCount: jsonSerialization['swapCount'] as int,
      switchChanceCount: jsonSerialization['switchChanceCount'] as int,
      isDeletingAccount: jsonSerialization['isDeletingAccount'] as bool,
      email: jsonSerialization['email'] as String?,
      likes: (jsonSerialization['likes'] as List?)
          ?.map((e) => _i2.Like.fromJson((e as Map<String, dynamic>)))
          .toList(),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String authId;

  String firstName;

  String lastName;

  double currentLatitude;

  double currentLongitude;

  String avatarUrl128;

  String avatarUrl256;

  String avatarUrl512;

  String avatarUrl1024;

  int toyCount;

  int swapCount;

  int switchChanceCount;

  bool isDeletingAccount;

  String? email;

  List<_i2.Like>? likes;

  Consumer copyWith({
    int? id,
    String? authId,
    String? firstName,
    String? lastName,
    double? currentLatitude,
    double? currentLongitude,
    String? avatarUrl128,
    String? avatarUrl256,
    String? avatarUrl512,
    String? avatarUrl1024,
    int? toyCount,
    int? swapCount,
    int? switchChanceCount,
    bool? isDeletingAccount,
    String? email,
    List<_i2.Like>? likes,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'authId': authId,
      'firstName': firstName,
      'lastName': lastName,
      'currentLatitude': currentLatitude,
      'currentLongitude': currentLongitude,
      'avatarUrl128': avatarUrl128,
      'avatarUrl256': avatarUrl256,
      'avatarUrl512': avatarUrl512,
      'avatarUrl1024': avatarUrl1024,
      'toyCount': toyCount,
      'swapCount': swapCount,
      'switchChanceCount': switchChanceCount,
      'isDeletingAccount': isDeletingAccount,
      if (email != null) 'email': email,
      if (likes != null) 'likes': likes?.toJson(valueToJson: (v) => v.toJson()),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ConsumerImpl extends Consumer {
  _ConsumerImpl({
    int? id,
    required String authId,
    required String firstName,
    required String lastName,
    required double currentLatitude,
    required double currentLongitude,
    required String avatarUrl128,
    required String avatarUrl256,
    required String avatarUrl512,
    required String avatarUrl1024,
    required int toyCount,
    required int swapCount,
    required int switchChanceCount,
    required bool isDeletingAccount,
    String? email,
    List<_i2.Like>? likes,
  }) : super._(
          id: id,
          authId: authId,
          firstName: firstName,
          lastName: lastName,
          currentLatitude: currentLatitude,
          currentLongitude: currentLongitude,
          avatarUrl128: avatarUrl128,
          avatarUrl256: avatarUrl256,
          avatarUrl512: avatarUrl512,
          avatarUrl1024: avatarUrl1024,
          toyCount: toyCount,
          swapCount: swapCount,
          switchChanceCount: switchChanceCount,
          isDeletingAccount: isDeletingAccount,
          email: email,
          likes: likes,
        );

  @override
  Consumer copyWith({
    Object? id = _Undefined,
    String? authId,
    String? firstName,
    String? lastName,
    double? currentLatitude,
    double? currentLongitude,
    String? avatarUrl128,
    String? avatarUrl256,
    String? avatarUrl512,
    String? avatarUrl1024,
    int? toyCount,
    int? swapCount,
    int? switchChanceCount,
    bool? isDeletingAccount,
    Object? email = _Undefined,
    Object? likes = _Undefined,
  }) {
    return Consumer(
      id: id is int? ? id : this.id,
      authId: authId ?? this.authId,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      currentLatitude: currentLatitude ?? this.currentLatitude,
      currentLongitude: currentLongitude ?? this.currentLongitude,
      avatarUrl128: avatarUrl128 ?? this.avatarUrl128,
      avatarUrl256: avatarUrl256 ?? this.avatarUrl256,
      avatarUrl512: avatarUrl512 ?? this.avatarUrl512,
      avatarUrl1024: avatarUrl1024 ?? this.avatarUrl1024,
      toyCount: toyCount ?? this.toyCount,
      swapCount: swapCount ?? this.swapCount,
      switchChanceCount: switchChanceCount ?? this.switchChanceCount,
      isDeletingAccount: isDeletingAccount ?? this.isDeletingAccount,
      email: email is String? ? email : this.email,
      likes: likes is List<_i2.Like>? ? likes : this.likes?.clone(),
    );
  }
}
