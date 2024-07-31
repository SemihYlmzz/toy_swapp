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

abstract class Like implements _i1.SerializableModel {
  Like._({
    this.id,
    required this.toyId,
    this.toy,
    required this.consumerId,
    this.consumer,
  });

  factory Like({
    int? id,
    required int toyId,
    _i2.Toy? toy,
    required int consumerId,
    _i2.Consumer? consumer,
  }) = _LikeImpl;

  factory Like.fromJson(Map<String, dynamic> jsonSerialization) {
    return Like(
      id: jsonSerialization['id'] as int?,
      toyId: jsonSerialization['toyId'] as int,
      toy: jsonSerialization['toy'] == null
          ? null
          : _i2.Toy.fromJson(
              (jsonSerialization['toy'] as Map<String, dynamic>)),
      consumerId: jsonSerialization['consumerId'] as int,
      consumer: jsonSerialization['consumer'] == null
          ? null
          : _i2.Consumer.fromJson(
              (jsonSerialization['consumer'] as Map<String, dynamic>)),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int toyId;

  _i2.Toy? toy;

  int consumerId;

  _i2.Consumer? consumer;

  Like copyWith({
    int? id,
    int? toyId,
    _i2.Toy? toy,
    int? consumerId,
    _i2.Consumer? consumer,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'toyId': toyId,
      if (toy != null) 'toy': toy?.toJson(),
      'consumerId': consumerId,
      if (consumer != null) 'consumer': consumer?.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _LikeImpl extends Like {
  _LikeImpl({
    int? id,
    required int toyId,
    _i2.Toy? toy,
    required int consumerId,
    _i2.Consumer? consumer,
  }) : super._(
          id: id,
          toyId: toyId,
          toy: toy,
          consumerId: consumerId,
          consumer: consumer,
        );

  @override
  Like copyWith({
    Object? id = _Undefined,
    int? toyId,
    Object? toy = _Undefined,
    int? consumerId,
    Object? consumer = _Undefined,
  }) {
    return Like(
      id: id is int? ? id : this.id,
      toyId: toyId ?? this.toyId,
      toy: toy is _i2.Toy? ? toy : this.toy?.copyWith(),
      consumerId: consumerId ?? this.consumerId,
      consumer:
          consumer is _i2.Consumer? ? consumer : this.consumer?.copyWith(),
    );
  }
}
