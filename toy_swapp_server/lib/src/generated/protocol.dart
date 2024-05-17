/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod/serverpod.dart' as _i1;
import 'package:serverpod/protocol.dart' as _i2;
import 'package:serverpod_auth_server/module.dart' as _i3;
import 'consumer.dart' as _i4;
import 'example.dart' as _i5;
import 'like.dart' as _i6;
import 'support.dart' as _i7;
import 'toy.dart' as _i8;
import 'toy_age.dart' as _i9;
import 'toy_and_owner_consumer.dart' as _i10;
import 'toy_condition.dart' as _i11;
import 'toy_gender.dart' as _i12;
import 'toy_image_urls.dart' as _i13;
import 'protocol.dart' as _i14;
import 'package:toy_swapp_server/src/generated/toy.dart' as _i15;
import 'package:toy_swapp_server/src/generated/toy_image_urls.dart' as _i16;
import 'package:toy_swapp_server/src/generated/toy_and_owner_consumer.dart'
    as _i17;
export 'consumer.dart';
export 'example.dart';
export 'like.dart';
export 'support.dart';
export 'toy.dart';
export 'toy_age.dart';
export 'toy_and_owner_consumer.dart';
export 'toy_condition.dart';
export 'toy_gender.dart';
export 'toy_image_urls.dart';

class Protocol extends _i1.SerializationManagerServer {
  Protocol._();

  factory Protocol() => _instance;

  static final Map<Type, _i1.constructor> customConstructors = {};

  static final Protocol _instance = Protocol._();

  static final List<_i2.TableDefinition> targetTableDefinitions = [
    _i2.TableDefinition(
      name: 'consumers',
      dartName: 'Consumer',
      schema: 'public',
      module: 'toy_swapp',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'consumers_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'authId',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'firstName',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'lastName',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'currentLatitude',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _i2.ColumnDefinition(
          name: 'currentLongitude',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _i2.ColumnDefinition(
          name: 'avatarUrl128',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'avatarUrl256',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'avatarUrl512',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'avatarUrl1024',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'toyCount',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'swapCount',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'switchChanceCount',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'isDeletingAccount',
          columnType: _i2.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _i2.ColumnDefinition(
          name: 'email',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'consumers_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'likes',
      dartName: 'Like',
      schema: 'public',
      module: 'toy_swapp',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'likes_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'toyId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'consumerId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'likes_fk_0',
          columns: ['toyId'],
          referenceTable: 'toys',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'likes_fk_1',
          columns: ['consumerId'],
          referenceTable: 'consumers',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'likes_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
        _i2.IndexDefinition(
          indexName: 'enrollment_index_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'toyId',
            ),
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'consumerId',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'supports',
      dartName: 'Support',
      schema: 'public',
      module: 'toy_swapp',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'supports_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'authId',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'firstName',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'lastName',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'supports_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'toys',
      dartName: 'Toy',
      schema: 'public',
      module: 'toy_swapp',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'toys_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'ownerConsumerID',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'name',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'description',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'declineReason',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'imageUrlList',
          columnType: _i2.ColumnType.json,
          isNullable: false,
          dartType: 'List<protocol:ToyImageUrls>',
        ),
        _i2.ColumnDefinition(
          name: 'age',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'protocol:ToyAge',
        ),
        _i2.ColumnDefinition(
          name: 'gender',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'protocol:ToyGender',
        ),
        _i2.ColumnDefinition(
          name: 'condition',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'protocol:ToyCondition',
        ),
        _i2.ColumnDefinition(
          name: 'createdAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'isPublic',
          columnType: _i2.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _i2.ColumnDefinition(
          name: 'isLocked',
          columnType: _i2.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _i2.ColumnDefinition(
          name: 'likeCount',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'acceptDeciderSupportID',
          columnType: _i2.ColumnType.integer,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: 'isAccepted',
          columnType: _i2.ColumnType.boolean,
          isNullable: true,
          dartType: 'bool?',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'toys_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    ..._i3.Protocol.targetTableDefinitions,
    ..._i2.Protocol.targetTableDefinitions,
  ];

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (customConstructors.containsKey(t)) {
      return customConstructors[t]!(data, this) as T;
    }
    if (t == _i4.Consumer) {
      return _i4.Consumer.fromJson(data, this) as T;
    }
    if (t == _i5.Example) {
      return _i5.Example.fromJson(data, this) as T;
    }
    if (t == _i6.Like) {
      return _i6.Like.fromJson(data, this) as T;
    }
    if (t == _i7.Support) {
      return _i7.Support.fromJson(data, this) as T;
    }
    if (t == _i8.Toy) {
      return _i8.Toy.fromJson(data, this) as T;
    }
    if (t == _i9.ToyAge) {
      return _i9.ToyAge.fromJson(data) as T;
    }
    if (t == _i10.ToyAndOwnerConsumer) {
      return _i10.ToyAndOwnerConsumer.fromJson(data, this) as T;
    }
    if (t == _i11.ToyCondition) {
      return _i11.ToyCondition.fromJson(data) as T;
    }
    if (t == _i12.ToyGender) {
      return _i12.ToyGender.fromJson(data) as T;
    }
    if (t == _i13.ToyImageUrls) {
      return _i13.ToyImageUrls.fromJson(data, this) as T;
    }
    if (t == _i1.getType<_i4.Consumer?>()) {
      return (data != null ? _i4.Consumer.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i5.Example?>()) {
      return (data != null ? _i5.Example.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i6.Like?>()) {
      return (data != null ? _i6.Like.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i7.Support?>()) {
      return (data != null ? _i7.Support.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i8.Toy?>()) {
      return (data != null ? _i8.Toy.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i9.ToyAge?>()) {
      return (data != null ? _i9.ToyAge.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i10.ToyAndOwnerConsumer?>()) {
      return (data != null
          ? _i10.ToyAndOwnerConsumer.fromJson(data, this)
          : null) as T;
    }
    if (t == _i1.getType<_i11.ToyCondition?>()) {
      return (data != null ? _i11.ToyCondition.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i12.ToyGender?>()) {
      return (data != null ? _i12.ToyGender.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i13.ToyImageUrls?>()) {
      return (data != null ? _i13.ToyImageUrls.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<List<_i14.Like>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i14.Like>(e)).toList()
          : null) as dynamic;
    }
    if (t == List<_i14.ToyImageUrls>) {
      return (data as List)
          .map((e) => deserialize<_i14.ToyImageUrls>(e))
          .toList() as dynamic;
    }
    if (t == _i1.getType<List<_i14.Like>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i14.Like>(e)).toList()
          : null) as dynamic;
    }
    if (t == List<_i15.Toy>) {
      return (data as List).map((e) => deserialize<_i15.Toy>(e)).toList()
          as dynamic;
    }
    if (t == List<_i16.ToyImageUrls>) {
      return (data as List)
          .map((e) => deserialize<_i16.ToyImageUrls>(e))
          .toList() as dynamic;
    }
    if (t == List<_i17.ToyAndOwnerConsumer>) {
      return (data as List)
          .map((e) => deserialize<_i17.ToyAndOwnerConsumer>(e))
          .toList() as dynamic;
    }
    try {
      return _i3.Protocol().deserialize<T>(data, t);
    } catch (_) {}
    try {
      return _i2.Protocol().deserialize<T>(data, t);
    } catch (_) {}
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    String? className;
    className = _i3.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod_auth.$className';
    }
    if (data is _i4.Consumer) {
      return 'Consumer';
    }
    if (data is _i5.Example) {
      return 'Example';
    }
    if (data is _i6.Like) {
      return 'Like';
    }
    if (data is _i7.Support) {
      return 'Support';
    }
    if (data is _i8.Toy) {
      return 'Toy';
    }
    if (data is _i9.ToyAge) {
      return 'ToyAge';
    }
    if (data is _i10.ToyAndOwnerConsumer) {
      return 'ToyAndOwnerConsumer';
    }
    if (data is _i11.ToyCondition) {
      return 'ToyCondition';
    }
    if (data is _i12.ToyGender) {
      return 'ToyGender';
    }
    if (data is _i13.ToyImageUrls) {
      return 'ToyImageUrls';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'].startsWith('serverpod_auth.')) {
      data['className'] = data['className'].substring(15);
      return _i3.Protocol().deserializeByClassName(data);
    }
    if (data['className'] == 'Consumer') {
      return deserialize<_i4.Consumer>(data['data']);
    }
    if (data['className'] == 'Example') {
      return deserialize<_i5.Example>(data['data']);
    }
    if (data['className'] == 'Like') {
      return deserialize<_i6.Like>(data['data']);
    }
    if (data['className'] == 'Support') {
      return deserialize<_i7.Support>(data['data']);
    }
    if (data['className'] == 'Toy') {
      return deserialize<_i8.Toy>(data['data']);
    }
    if (data['className'] == 'ToyAge') {
      return deserialize<_i9.ToyAge>(data['data']);
    }
    if (data['className'] == 'ToyAndOwnerConsumer') {
      return deserialize<_i10.ToyAndOwnerConsumer>(data['data']);
    }
    if (data['className'] == 'ToyCondition') {
      return deserialize<_i11.ToyCondition>(data['data']);
    }
    if (data['className'] == 'ToyGender') {
      return deserialize<_i12.ToyGender>(data['data']);
    }
    if (data['className'] == 'ToyImageUrls') {
      return deserialize<_i13.ToyImageUrls>(data['data']);
    }
    return super.deserializeByClassName(data);
  }

  @override
  _i1.Table? getTableForType(Type t) {
    {
      var table = _i3.Protocol().getTableForType(t);
      if (table != null) {
        return table;
      }
    }
    {
      var table = _i2.Protocol().getTableForType(t);
      if (table != null) {
        return table;
      }
    }
    switch (t) {
      case _i4.Consumer:
        return _i4.Consumer.t;
      case _i6.Like:
        return _i6.Like.t;
      case _i7.Support:
        return _i7.Support.t;
      case _i8.Toy:
        return _i8.Toy.t;
    }
    return null;
  }

  @override
  List<_i2.TableDefinition> getTargetTableDefinitions() =>
      targetTableDefinitions;

  @override
  String getModuleName() => 'toy_swapp';
}
