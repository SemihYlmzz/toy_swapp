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

abstract class Consumer extends _i1.TableRow
    implements _i1.ProtocolSerialization {
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
  Map<String, dynamic> toJsonForProtocol() {
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
        'likes': likes?.toJson(valueToJson: (v) => v.toJsonForProtocol()),
    };
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
    return session.db.find<Consumer>(
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
    return session.db.findFirstRow<Consumer>(
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
    return session.db.findById<Consumer>(
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
    return session.db.insert<Consumer>(
      rows,
      transaction: transaction,
    );
  }

  Future<Consumer> insertRow(
    _i1.Session session,
    Consumer row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Consumer>(
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
    return session.db.update<Consumer>(
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
    return session.db.updateRow<Consumer>(
      row,
      columns: columns?.call(Consumer.t),
      transaction: transaction,
    );
  }

  Future<List<Consumer>> delete(
    _i1.Session session,
    List<Consumer> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Consumer>(
      rows,
      transaction: transaction,
    );
  }

  Future<Consumer> deleteRow(
    _i1.Session session,
    Consumer row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Consumer>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Consumer>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ConsumerTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Consumer>(
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
    return session.db.count<Consumer>(
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
    await session.db.update<_i2.Like>(
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
    await session.db.updateRow<_i2.Like>(
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
    await session.db.update<_i2.Like>(
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
    await session.db.updateRow<_i2.Like>(
      $like,
      columns: [_i2.Like.t.consumerId],
    );
  }
}
