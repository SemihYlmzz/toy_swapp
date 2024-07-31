/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'protocol.dart' as _i2;

abstract class ToyAndOwnerConsumer
    implements _i1.SerializableModel, _i1.ProtocolSerialization {
  ToyAndOwnerConsumer._({
    required this.toy,
    required this.ownerConsumer,
  });

  factory ToyAndOwnerConsumer({
    required _i2.Toy toy,
    required _i2.Consumer ownerConsumer,
  }) = _ToyAndOwnerConsumerImpl;

  factory ToyAndOwnerConsumer.fromJson(Map<String, dynamic> jsonSerialization) {
    return ToyAndOwnerConsumer(
      toy: _i2.Toy.fromJson((jsonSerialization['toy'] as Map<String, dynamic>)),
      ownerConsumer: _i2.Consumer.fromJson(
          (jsonSerialization['ownerConsumer'] as Map<String, dynamic>)),
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

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      'toy': toy.toJsonForProtocol(),
      'ownerConsumer': ownerConsumer.toJsonForProtocol(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
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
