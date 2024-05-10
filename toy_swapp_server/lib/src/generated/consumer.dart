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
import 'package:serverpod_serialization/serverpod_serialization.dart';

abstract class Consumer extends _i1.TableRow {
  Consumer._({
    int? id,
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
  }) : super(id);

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

  factory Consumer.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Consumer(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      authId:
          serializationManager.deserialize<String>(jsonSerialization['authId']),
      firstName: serializationManager
          .deserialize<String>(jsonSerialization['firstName']),
      lastName: serializationManager
          .deserialize<String>(jsonSerialization['lastName']),
      currentLatitude: serializationManager
          .deserialize<double>(jsonSerialization['currentLatitude']),
      currentLongitude: serializationManager
          .deserialize<double>(jsonSerialization['currentLongitude']),
      avatarUrl128: serializationManager
          .deserialize<String>(jsonSerialization['avatarUrl128']),
      avatarUrl256: serializationManager
          .deserialize<String>(jsonSerialization['avatarUrl256']),
      avatarUrl512: serializationManager
          .deserialize<String>(jsonSerialization['avatarUrl512']),
      avatarUrl1024: serializationManager
          .deserialize<String>(jsonSerialization['avatarUrl1024']),
      toyCount:
          serializationManager.deserialize<int>(jsonSerialization['toyCount']),
      swapCount:
          serializationManager.deserialize<int>(jsonSerialization['swapCount']),
      switchChanceCount: serializationManager
          .deserialize<int>(jsonSerialization['switchChanceCount']),
      isDeletingAccount: serializationManager
          .deserialize<bool>(jsonSerialization['isDeletingAccount']),
      email:
          serializationManager.deserialize<String?>(jsonSerialization['email']),
      likes: serializationManager
          .deserialize<List<_i2.Like>?>(jsonSerialization['likes']),
    );
  }

  static final t = ConsumerTable();

  static const db = ConsumerRepository._();

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

  @override
  _i1.Table get table => t;

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
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
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
      'email': email,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
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
      if (likes != null)
        'likes': likes?.toJson(valueToJson: (v) => v.allToJson()),
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
      case 'authId':
        authId = value;
        return;
      case 'firstName':
        firstName = value;
        return;
      case 'lastName':
        lastName = value;
        return;
      case 'currentLatitude':
        currentLatitude = value;
        return;
      case 'currentLongitude':
        currentLongitude = value;
        return;
      case 'avatarUrl128':
        avatarUrl128 = value;
        return;
      case 'avatarUrl256':
        avatarUrl256 = value;
        return;
      case 'avatarUrl512':
        avatarUrl512 = value;
        return;
      case 'avatarUrl1024':
        avatarUrl1024 = value;
        return;
      case 'toyCount':
        toyCount = value;
        return;
      case 'swapCount':
        swapCount = value;
        return;
      case 'switchChanceCount':
        switchChanceCount = value;
        return;
      case 'isDeletingAccount':
        isDeletingAccount = value;
        return;
      case 'email':
        email = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<Consumer>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ConsumerTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    ConsumerInclude? include,
  }) async {
    return session.db.find<Consumer>(
      where: where != null ? where(Consumer.t) : null,
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
  static Future<Consumer?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ConsumerTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    ConsumerInclude? include,
  }) async {
    return session.db.findSingleRow<Consumer>(
      where: where != null ? where(Consumer.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Consumer?> findById(
    _i1.Session session,
    int id, {
    ConsumerInclude? include,
  }) async {
    return session.db.findById<Consumer>(
      id,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ConsumerTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Consumer>(
      where: where(Consumer.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    Consumer row, {
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
    Consumer row, {
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
    Consumer row, {
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
    _i1.WhereExpressionBuilder<ConsumerTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Consumer>(
      where: where != null ? where(Consumer.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static ConsumerInclude include({_i2.LikeIncludeList? likes}) {
    return ConsumerInclude._(likes: likes);
  }

  static ConsumerIncludeList includeList({
    _i1.WhereExpressionBuilder<ConsumerTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ConsumerTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ConsumerTable>? orderByList,
    ConsumerInclude? include,
  }) {
    return ConsumerIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Consumer.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Consumer.t),
      include: include,
    );
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

class ConsumerTable extends _i1.Table {
  ConsumerTable({super.tableRelation}) : super(tableName: 'consumers') {
    authId = _i1.ColumnString(
      'authId',
      this,
    );
    firstName = _i1.ColumnString(
      'firstName',
      this,
    );
    lastName = _i1.ColumnString(
      'lastName',
      this,
    );
    currentLatitude = _i1.ColumnDouble(
      'currentLatitude',
      this,
    );
    currentLongitude = _i1.ColumnDouble(
      'currentLongitude',
      this,
    );
    avatarUrl128 = _i1.ColumnString(
      'avatarUrl128',
      this,
    );
    avatarUrl256 = _i1.ColumnString(
      'avatarUrl256',
      this,
    );
    avatarUrl512 = _i1.ColumnString(
      'avatarUrl512',
      this,
    );
    avatarUrl1024 = _i1.ColumnString(
      'avatarUrl1024',
      this,
    );
    toyCount = _i1.ColumnInt(
      'toyCount',
      this,
    );
    swapCount = _i1.ColumnInt(
      'swapCount',
      this,
    );
    switchChanceCount = _i1.ColumnInt(
      'switchChanceCount',
      this,
    );
    isDeletingAccount = _i1.ColumnBool(
      'isDeletingAccount',
      this,
    );
    email = _i1.ColumnString(
      'email',
      this,
    );
  }

  late final _i1.ColumnString authId;

  late final _i1.ColumnString firstName;

  late final _i1.ColumnString lastName;

  late final _i1.ColumnDouble currentLatitude;

  late final _i1.ColumnDouble currentLongitude;

  late final _i1.ColumnString avatarUrl128;

  late final _i1.ColumnString avatarUrl256;

  late final _i1.ColumnString avatarUrl512;

  late final _i1.ColumnString avatarUrl1024;

  late final _i1.ColumnInt toyCount;

  late final _i1.ColumnInt swapCount;

  late final _i1.ColumnInt switchChanceCount;

  late final _i1.ColumnBool isDeletingAccount;

  late final _i1.ColumnString email;

  _i2.LikeTable? ___likes;

  _i1.ManyRelation<_i2.LikeTable>? _likes;

  _i2.LikeTable get __likes {
    if (___likes != null) return ___likes!;
    ___likes = _i1.createRelationTable(
      relationFieldName: '__likes',
      field: Consumer.t.id,
      foreignField: _i2.Like.t.consumerId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.LikeTable(tableRelation: foreignTableRelation),
    );
    return ___likes!;
  }

  _i1.ManyRelation<_i2.LikeTable> get likes {
    if (_likes != null) return _likes!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'likes',
      field: Consumer.t.id,
      foreignField: _i2.Like.t.consumerId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.LikeTable(tableRelation: foreignTableRelation),
    );
    _likes = _i1.ManyRelation<_i2.LikeTable>(
      tableWithRelations: relationTable,
      table: _i2.LikeTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _likes!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        authId,
        firstName,
        lastName,
        currentLatitude,
        currentLongitude,
        avatarUrl128,
        avatarUrl256,
        avatarUrl512,
        avatarUrl1024,
        toyCount,
        swapCount,
        switchChanceCount,
        isDeletingAccount,
        email,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'likes') {
      return __likes;
    }
    return null;
  }
}

@Deprecated('Use ConsumerTable.t instead.')
ConsumerTable tConsumer = ConsumerTable();

class ConsumerInclude extends _i1.IncludeObject {
  ConsumerInclude._({_i2.LikeIncludeList? likes}) {
    _likes = likes;
  }

  _i2.LikeIncludeList? _likes;

  @override
  Map<String, _i1.Include?> get includes => {'likes': _likes};

  @override
  _i1.Table get table => Consumer.t;
}

class ConsumerIncludeList extends _i1.IncludeList {
  ConsumerIncludeList._({
    _i1.WhereExpressionBuilder<ConsumerTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Consumer.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Consumer.t;
}

class ConsumerRepository {
  const ConsumerRepository._();

  final attach = const ConsumerAttachRepository._();

  final attachRow = const ConsumerAttachRowRepository._();

  final detach = const ConsumerDetachRepository._();

  final detachRow = const ConsumerDetachRowRepository._();

  Future<List<Consumer>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ConsumerTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ConsumerTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ConsumerTable>? orderByList,
    _i1.Transaction? transaction,
    ConsumerInclude? include,
  }) async {
    return session.dbNext.find<Consumer>(
      where: where?.call(Consumer.t),
      orderBy: orderBy?.call(Consumer.t),
      orderByList: orderByList?.call(Consumer.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Consumer?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ConsumerTable>? where,
    int? offset,
    _i1.OrderByBuilder<ConsumerTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ConsumerTable>? orderByList,
    _i1.Transaction? transaction,
    ConsumerInclude? include,
  }) async {
    return session.dbNext.findFirstRow<Consumer>(
      where: where?.call(Consumer.t),
      orderBy: orderBy?.call(Consumer.t),
      orderByList: orderByList?.call(Consumer.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Consumer?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    ConsumerInclude? include,
  }) async {
    return session.dbNext.findById<Consumer>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<Consumer>> insert(
    _i1.Session session,
    List<Consumer> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<Consumer>(
      rows,
      transaction: transaction,
    );
  }

  Future<Consumer> insertRow(
    _i1.Session session,
    Consumer row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<Consumer>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Consumer>> update(
    _i1.Session session,
    List<Consumer> rows, {
    _i1.ColumnSelections<ConsumerTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<Consumer>(
      rows,
      columns: columns?.call(Consumer.t),
      transaction: transaction,
    );
  }

  Future<Consumer> updateRow(
    _i1.Session session,
    Consumer row, {
    _i1.ColumnSelections<ConsumerTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<Consumer>(
      row,
      columns: columns?.call(Consumer.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Consumer> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<Consumer>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Consumer row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<Consumer>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ConsumerTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<Consumer>(
      where: where(Consumer.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ConsumerTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<Consumer>(
      where: where?.call(Consumer.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class ConsumerAttachRepository {
  const ConsumerAttachRepository._();

  Future<void> likes(
    _i1.Session session,
    Consumer consumer,
    List<_i2.Like> like,
  ) async {
    if (like.any((e) => e.id == null)) {
      throw ArgumentError.notNull('like.id');
    }
    if (consumer.id == null) {
      throw ArgumentError.notNull('consumer.id');
    }

    var $like = like.map((e) => e.copyWith(consumerId: consumer.id)).toList();
    await session.dbNext.update<_i2.Like>(
      $like,
      columns: [_i2.Like.t.consumerId],
    );
  }
}

class ConsumerAttachRowRepository {
  const ConsumerAttachRowRepository._();

  Future<void> likes(
    _i1.Session session,
    Consumer consumer,
    _i2.Like like,
  ) async {
    if (like.id == null) {
      throw ArgumentError.notNull('like.id');
    }
    if (consumer.id == null) {
      throw ArgumentError.notNull('consumer.id');
    }

    var $like = like.copyWith(consumerId: consumer.id);
    await session.dbNext.updateRow<_i2.Like>(
      $like,
      columns: [_i2.Like.t.consumerId],
    );
  }
}

class ConsumerDetachRepository {
  const ConsumerDetachRepository._();

  Future<void> likes(
    _i1.Session session,
    List<_i2.Like> like,
  ) async {
    if (like.any((e) => e.id == null)) {
      throw ArgumentError.notNull('like.id');
    }

    var $like = like.map((e) => e.copyWith(consumerId: null)).toList();
    await session.dbNext.update<_i2.Like>(
      $like,
      columns: [_i2.Like.t.consumerId],
    );
  }
}

class ConsumerDetachRowRepository {
  const ConsumerDetachRowRepository._();

  Future<void> likes(
    _i1.Session session,
    _i2.Like like,
  ) async {
    if (like.id == null) {
      throw ArgumentError.notNull('like.id');
    }

    var $like = like.copyWith(consumerId: null);
    await session.dbNext.updateRow<_i2.Like>(
      $like,
      columns: [_i2.Like.t.consumerId],
    );
  }
}
