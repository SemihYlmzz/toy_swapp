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

abstract class Like extends _i1.TableRow implements _i1.ProtocolSerialization {
  Like._({
    int? id,
    required this.toyId,
    this.toy,
    required this.consumerId,
    this.consumer,
  }) : super(id);

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

  static final t = LikeTable();

  static const db = LikeRepository._();

  int toyId;

  _i2.Toy? toy;

  int consumerId;

  _i2.Consumer? consumer;

  @override
  _i1.Table get table => t;

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
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'toyId': toyId,
      if (toy != null) 'toy': toy?.toJsonForProtocol(),
      'consumerId': consumerId,
      if (consumer != null) 'consumer': consumer?.toJsonForProtocol(),
    };
  }

  static LikeInclude include({
    _i2.ToyInclude? toy,
    _i2.ConsumerInclude? consumer,
  }) {
    return LikeInclude._(
      toy: toy,
      consumer: consumer,
    );
  }

  static LikeIncludeList includeList({
    _i1.WhereExpressionBuilder<LikeTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<LikeTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<LikeTable>? orderByList,
    LikeInclude? include,
  }) {
    return LikeIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Like.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Like.t),
      include: include,
    );
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

class LikeTable extends _i1.Table {
  LikeTable({super.tableRelation}) : super(tableName: 'likes') {
    toyId = _i1.ColumnInt(
      'toyId',
      this,
    );
    consumerId = _i1.ColumnInt(
      'consumerId',
      this,
    );
  }

  late final _i1.ColumnInt toyId;

  _i2.ToyTable? _toy;

  late final _i1.ColumnInt consumerId;

  _i2.ConsumerTable? _consumer;

  _i2.ToyTable get toy {
    if (_toy != null) return _toy!;
    _toy = _i1.createRelationTable(
      relationFieldName: 'toy',
      field: Like.t.toyId,
      foreignField: _i2.Toy.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.ToyTable(tableRelation: foreignTableRelation),
    );
    return _toy!;
  }

  _i2.ConsumerTable get consumer {
    if (_consumer != null) return _consumer!;
    _consumer = _i1.createRelationTable(
      relationFieldName: 'consumer',
      field: Like.t.consumerId,
      foreignField: _i2.Consumer.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.ConsumerTable(tableRelation: foreignTableRelation),
    );
    return _consumer!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        toyId,
        consumerId,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'toy') {
      return toy;
    }
    if (relationField == 'consumer') {
      return consumer;
    }
    return null;
  }
}

class LikeInclude extends _i1.IncludeObject {
  LikeInclude._({
    _i2.ToyInclude? toy,
    _i2.ConsumerInclude? consumer,
  }) {
    _toy = toy;
    _consumer = consumer;
  }

  _i2.ToyInclude? _toy;

  _i2.ConsumerInclude? _consumer;

  @override
  Map<String, _i1.Include?> get includes => {
        'toy': _toy,
        'consumer': _consumer,
      };

  @override
  _i1.Table get table => Like.t;
}

class LikeIncludeList extends _i1.IncludeList {
  LikeIncludeList._({
    _i1.WhereExpressionBuilder<LikeTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Like.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Like.t;
}

class LikeRepository {
  const LikeRepository._();

  final attachRow = const LikeAttachRowRepository._();

  Future<List<Like>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<LikeTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<LikeTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<LikeTable>? orderByList,
    _i1.Transaction? transaction,
    LikeInclude? include,
  }) async {
    return session.db.find<Like>(
      where: where?.call(Like.t),
      orderBy: orderBy?.call(Like.t),
      orderByList: orderByList?.call(Like.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Like?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<LikeTable>? where,
    int? offset,
    _i1.OrderByBuilder<LikeTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<LikeTable>? orderByList,
    _i1.Transaction? transaction,
    LikeInclude? include,
  }) async {
    return session.db.findFirstRow<Like>(
      where: where?.call(Like.t),
      orderBy: orderBy?.call(Like.t),
      orderByList: orderByList?.call(Like.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Like?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    LikeInclude? include,
  }) async {
    return session.db.findById<Like>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<Like>> insert(
    _i1.Session session,
    List<Like> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Like>(
      rows,
      transaction: transaction,
    );
  }

  Future<Like> insertRow(
    _i1.Session session,
    Like row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Like>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Like>> update(
    _i1.Session session,
    List<Like> rows, {
    _i1.ColumnSelections<LikeTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Like>(
      rows,
      columns: columns?.call(Like.t),
      transaction: transaction,
    );
  }

  Future<Like> updateRow(
    _i1.Session session,
    Like row, {
    _i1.ColumnSelections<LikeTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Like>(
      row,
      columns: columns?.call(Like.t),
      transaction: transaction,
    );
  }

  Future<List<Like>> delete(
    _i1.Session session,
    List<Like> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Like>(
      rows,
      transaction: transaction,
    );
  }

  Future<Like> deleteRow(
    _i1.Session session,
    Like row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Like>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Like>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<LikeTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Like>(
      where: where(Like.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<LikeTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Like>(
      where: where?.call(Like.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class LikeAttachRowRepository {
  const LikeAttachRowRepository._();

  Future<void> toy(
    _i1.Session session,
    Like like,
    _i2.Toy toy,
  ) async {
    if (like.id == null) {
      throw ArgumentError.notNull('like.id');
    }
    if (toy.id == null) {
      throw ArgumentError.notNull('toy.id');
    }

    var $like = like.copyWith(toyId: toy.id);
    await session.db.updateRow<Like>(
      $like,
      columns: [Like.t.toyId],
    );
  }

  Future<void> consumer(
    _i1.Session session,
    Like like,
    _i2.Consumer consumer,
  ) async {
    if (like.id == null) {
      throw ArgumentError.notNull('like.id');
    }
    if (consumer.id == null) {
      throw ArgumentError.notNull('consumer.id');
    }

    var $like = like.copyWith(consumerId: consumer.id);
    await session.db.updateRow<Like>(
      $like,
      columns: [Like.t.consumerId],
    );
  }
}
