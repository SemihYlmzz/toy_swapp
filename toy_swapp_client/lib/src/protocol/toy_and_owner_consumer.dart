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

abstract class ToyAndOwnerConsumer extends _i1.SerializableEntity {
  ToyAndOwnerConsumer._({
    required this.toy,
    required this.ownerConsumer,
  });

  factory ToyAndOwnerConsumer({
    required _i2.Toy toy,
    required _i2.Consumer ownerConsumer,
  }) = _ToyAndOwnerConsumerImpl;

  factory ToyAndOwnerConsumer.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return ToyAndOwnerConsumer(
      toy: serializationManager.deserialize<_i2.Toy>(jsonSerialization['toy']),
      ownerConsumer: serializationManager
          .deserialize<_i2.Consumer>(jsonSerialization['ownerConsumer']),
    );
  }

  _i2.Toy toy;

  _i2.Consumer ownerConsumer;

  ToyAndOwnerConsumer copyWith({
    _i2.Toy? toy,
    _i2.Consumer? ownerConsumer,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      'toy': toy.toJson(),
      'ownerConsumer': ownerConsumer.toJson(),
    };
  }
}

class _ToyAndOwnerConsumerImpl extends ToyAndOwnerConsumer {
  _ToyAndOwnerConsumerImpl({
    required _i2.Toy toy,
    required _i2.Consumer ownerConsumer,
  }) : super._(
          toy: toy,
          ownerConsumer: ownerConsumer,
        );

  @override
  ToyAndOwnerConsumer copyWith({
    _i2.Toy? toy,
    _i2.Consumer? ownerConsumer,
  }) {
    return ToyAndOwnerConsumer(
      toy: toy ?? this.toy.copyWith(),
      ownerConsumer: ownerConsumer ?? this.ownerConsumer.copyWith(),
    );
  }
}
