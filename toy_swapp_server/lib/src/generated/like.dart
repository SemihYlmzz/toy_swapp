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

abstract class Like extends _i1.TableRow {
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

  factory Like.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Like(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      toyId: serializationManager.deserialize<int>(jsonSerialization['toyId']),
      toy: serializationManager.deserialize<_i2.Toy?>(jsonSerialization['toy']),
      consumerId: serializationManager
          .deserialize<int>(jsonSerialization['consumerId']),
      consumer: serializationManager
          .deserialize<_i2.Consumer?>(jsonSerialization['consumer']),
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
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'toyId': toyId,
      'consumerId': consumerId,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'toyId': toyId,
      if (toy != null) 'toy': toy?.allToJson(),
      'consumerId': consumerId,
      if (consumer != null) 'consumer': consumer?.allToJson(),
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  void setColumn(
    String columnName,
    value,
  ) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'toyId':
        toyId = value;
        return;
      case 'consumerId':
        consumerId = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<Like>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<LikeTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    LikeInclude? include,
  }) async {
    return session.db.find<Like>(
      where: where != null ? where(Like.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findRow instead.')
  static Future<Like?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<LikeTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    LikeInclude? include,
  }) async {
    return session.db.findSingleRow<Like>(
      where: where != null ? where(Like.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Like?> findById(
    _i1.Session session,
    int id, {
    LikeInclude? include,
  }) async {
    return session.db.findById<Like>(
      id,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<LikeTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Like>(
      where: where(Like.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    Like row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.update instead.')
  static Future<bool> update(
    _i1.Session session,
    Like row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  @Deprecated(
      'Will be removed in 2.0.0. Use: db.insert instead. Important note: In db.insert, the object you pass in is no longer modified, instead a new copy with the added row is returned which contains the inserted id.')
  static Future<void> insert(
    _i1.Session session,
    Like row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.count instead.')
  static Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<LikeTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Like>(
      where: where != null ? where(Like.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
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

@Deprecated('Use LikeTable.t instead.')
LikeTable tLike = LikeTable();

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
    return session.dbNext.find<Like>(
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
    return session.dbNext.findFirstRow<Like>(
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
    return session.dbNext.findById<Like>(
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
    return session.dbNext.insert<Like>(
      rows,
      transaction: transaction,
    );
  }

  Future<Like> insertRow(
    _i1.Session session,
    Like row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<Like>(
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
    return session.dbNext.update<Like>(
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
    return session.dbNext.updateRow<Like>(
      row,
      columns: columns?.call(Like.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Like> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<Like>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Like row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<Like>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<LikeTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<Like>(
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
    return session.dbNext.count<Like>(
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
    await session.dbNext.updateRow<Like>(
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
    await session.dbNext.updateRow<Like>(
      $like,
      columns: [Like.t.consumerId],
    );
  }
}
