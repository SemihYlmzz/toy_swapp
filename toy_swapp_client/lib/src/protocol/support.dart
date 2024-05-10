/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class Support extends _i1.SerializableEntity {
  Support._({
    this.id,
    required this.authId,
    required this.firstName,
    required this.lastName,
  });

  factory Support({
    int? id,
    required String authId,
    required String firstName,
    required String lastName,
  }) = _SupportImpl;

  factory Support.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Support(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      authId:
          serializationManager.deserialize<String>(jsonSerialization['authId']),
      firstName: serializationManager
          .deserialize<String>(jsonSerialization['firstName']),
      lastName: serializationManager
          .deserialize<String>(jsonSerialization['lastName']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String authId;

  String firstName;

  String lastName;

  Support copyWith({
    int? id,
    String? authId,
    String? firstName,
    String? lastName,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'authId': authId,
      'firstName': firstName,
      'lastName': lastName,
    };
  }
}

class _Undefined {}

class _SupportImpl extends Support {
  _SupportImpl({
    int? id,
    required String authId,
    required String firstName,
    required String lastName,
  }) : super._(
          id: id,
          authId: authId,
          firstName: firstName,
          lastName: lastName,
        );

  @override
  Support copyWith({
    Object? id = _Undefined,
    String? authId,
    String? firstName,
    String? lastName,
  }) {
    return Support(
      id: id is int? ? id : this.id,
      authId: authId ?? this.authId,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
    );
  }
}
