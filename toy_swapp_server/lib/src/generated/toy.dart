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

abstract class Toy extends _i1.TableRow {
  Toy._({
    int? id,
    required this.ownerConsumerID,
    required this.name,
    required this.description,
    required this.imageUrlList,
    required this.age,
    required this.gender,
    required this.condition,
    required this.createdAt,
    required this.isPublic,
    required this.isLocked,
    this.likes,
    required this.likeCount,
    required this.safeToPublicMarkerSupportID,
  }) : super(id);

  factory Toy({
    int? id,
    required int ownerConsumerID,
    required String name,
    required String description,
    required List<_i2.ToyImageUrls> imageUrlList,
    required _i2.ToyAge age,
    required _i2.ToyGender gender,
    required _i2.ToyCondition condition,
    required DateTime createdAt,
    required bool isPublic,
    required bool isLocked,
    List<_i2.Like>? likes,
    required int likeCount,
    required String safeToPublicMarkerSupportID,
  }) = _ToyImpl;

  factory Toy.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Toy(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      ownerConsumerID: serializationManager
          .deserialize<int>(jsonSerialization['ownerConsumerID']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      description: serializationManager
          .deserialize<String>(jsonSerialization['description']),
      imageUrlList: serializationManager.deserialize<List<_i2.ToyImageUrls>>(
          jsonSerialization['imageUrlList']),
      age: serializationManager
          .deserialize<_i2.ToyAge>(jsonSerialization['age']),
      gender: serializationManager
          .deserialize<_i2.ToyGender>(jsonSerialization['gender']),
      condition: serializationManager
          .deserialize<_i2.ToyCondition>(jsonSerialization['condition']),
      createdAt: serializationManager
          .deserialize<DateTime>(jsonSerialization['createdAt']),
      isPublic:
          serializationManager.deserialize<bool>(jsonSerialization['isPublic']),
      isLocked:
          serializationManager.deserialize<bool>(jsonSerialization['isLocked']),
      likes: serializationManager
          .deserialize<List<_i2.Like>?>(jsonSerialization['likes']),
      likeCount:
          serializationManager.deserialize<int>(jsonSerialization['likeCount']),
      safeToPublicMarkerSupportID: serializationManager.deserialize<String>(
          jsonSerialization['safeToPublicMarkerSupportID']),
    );
  }

  static final t = ToyTable();

  static const db = ToyRepository._();

  int ownerConsumerID;

  String name;

  String description;

  List<_i2.ToyImageUrls> imageUrlList;

  _i2.ToyAge age;

  _i2.ToyGender gender;

  _i2.ToyCondition condition;

  DateTime createdAt;

  bool isPublic;

  bool isLocked;

  List<_i2.Like>? likes;

  int likeCount;

  String safeToPublicMarkerSupportID;

  @override
  _i1.Table get table => t;

  Toy copyWith({
    int? id,
    int? ownerConsumerID,
    String? name,
    String? description,
    List<_i2.ToyImageUrls>? imageUrlList,
    _i2.ToyAge? age,
    _i2.ToyGender? gender,
    _i2.ToyCondition? condition,
    DateTime? createdAt,
    bool? isPublic,
    bool? isLocked,
    List<_i2.Like>? likes,
    int? likeCount,
    String? safeToPublicMarkerSupportID,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'ownerConsumerID': ownerConsumerID,
      'name': name,
      'description': description,
      'imageUrlList': imageUrlList.toJson(valueToJson: (v) => v.toJson()),
      'age': age.toJson(),
      'gender': gender.toJson(),
      'condition': condition.toJson(),
      'createdAt': createdAt.toJson(),
      'isPublic': isPublic,
      'isLocked': isLocked,
      if (likes != null) 'likes': likes?.toJson(valueToJson: (v) => v.toJson()),
      'likeCount': likeCount,
      'safeToPublicMarkerSupportID': safeToPublicMarkerSupportID,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'ownerConsumerID': ownerConsumerID,
      'name': name,
      'description': description,
      'imageUrlList': imageUrlList,
      'age': age,
      'gender': gender,
      'condition': condition,
      'createdAt': createdAt,
      'isPublic': isPublic,
      'isLocked': isLocked,
      'likeCount': likeCount,
      'safeToPublicMarkerSupportID': safeToPublicMarkerSupportID,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'ownerConsumerID': ownerConsumerID,
      'name': name,
      'description': description,
      'imageUrlList': imageUrlList.toJson(valueToJson: (v) => v.allToJson()),
      'age': age.toJson(),
      'gender': gender.toJson(),
      'condition': condition.toJson(),
      'createdAt': createdAt.toJson(),
      'isPublic': isPublic,
      'isLocked': isLocked,
      if (likes != null)
        'likes': likes?.toJson(valueToJson: (v) => v.allToJson()),
      'likeCount': likeCount,
      'safeToPublicMarkerSupportID': safeToPublicMarkerSupportID,
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
      case 'ownerConsumerID':
        ownerConsumerID = value;
        return;
      case 'name':
        name = value;
        return;
      case 'description':
        description = value;
        return;
      case 'imageUrlList':
        imageUrlList = value;
        return;
      case 'age':
        age = value;
        return;
      case 'gender':
        gender = value;
        return;
      case 'condition':
        condition = value;
        return;
      case 'createdAt':
        createdAt = value;
        return;
      case 'isPublic':
        isPublic = value;
        return;
      case 'isLocked':
        isLocked = value;
        return;
      case 'likeCount':
        likeCount = value;
        return;
      case 'safeToPublicMarkerSupportID':
        safeToPublicMarkerSupportID = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<Toy>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ToyTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    ToyInclude? include,
  }) async {
    return session.db.find<Toy>(
      where: where != null ? where(Toy.t) : null,
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
  static Future<Toy?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ToyTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    ToyInclude? include,
  }) async {
    return session.db.findSingleRow<Toy>(
      where: where != null ? where(Toy.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Toy?> findById(
    _i1.Session session,
    int id, {
    ToyInclude? include,
  }) async {
    return session.db.findById<Toy>(
      id,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ToyTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Toy>(
      where: where(Toy.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    Toy row, {
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
    Toy row, {
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
    Toy row, {
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
    _i1.WhereExpressionBuilder<ToyTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Toy>(
      where: where != null ? where(Toy.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static ToyInclude include({_i2.LikeIncludeList? likes}) {
    return ToyInclude._(likes: likes);
  }

  static ToyIncludeList includeList({
    _i1.WhereExpressionBuilder<ToyTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ToyTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ToyTable>? orderByList,
    ToyInclude? include,
  }) {
    return ToyIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Toy.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Toy.t),
      include: include,
    );
  }
}

class _Undefined {}

class _ToyImpl extends Toy {
  _ToyImpl({
    int? id,
    required int ownerConsumerID,
    required String name,
    required String description,
    required List<_i2.ToyImageUrls> imageUrlList,
    required _i2.ToyAge age,
    required _i2.ToyGender gender,
    required _i2.ToyCondition condition,
    required DateTime createdAt,
    required bool isPublic,
    required bool isLocked,
    List<_i2.Like>? likes,
    required int likeCount,
    required String safeToPublicMarkerSupportID,
  }) : super._(
          id: id,
          ownerConsumerID: ownerConsumerID,
          name: name,
          description: description,
          imageUrlList: imageUrlList,
          age: age,
          gender: gender,
          condition: condition,
          createdAt: createdAt,
          isPublic: isPublic,
          isLocked: isLocked,
          likes: likes,
          likeCount: likeCount,
          safeToPublicMarkerSupportID: safeToPublicMarkerSupportID,
        );

  @override
  Toy copyWith({
    Object? id = _Undefined,
    int? ownerConsumerID,
    String? name,
    String? description,
    List<_i2.ToyImageUrls>? imageUrlList,
    _i2.ToyAge? age,
    _i2.ToyGender? gender,
    _i2.ToyCondition? condition,
    DateTime? createdAt,
    bool? isPublic,
    bool? isLocked,
    Object? likes = _Undefined,
    int? likeCount,
    String? safeToPublicMarkerSupportID,
  }) {
    return Toy(
      id: id is int? ? id : this.id,
      ownerConsumerID: ownerConsumerID ?? this.ownerConsumerID,
      name: name ?? this.name,
      description: description ?? this.description,
      imageUrlList: imageUrlList ?? this.imageUrlList.clone(),
      age: age ?? this.age,
      gender: gender ?? this.gender,
      condition: condition ?? this.condition,
      createdAt: createdAt ?? this.createdAt,
      isPublic: isPublic ?? this.isPublic,
      isLocked: isLocked ?? this.isLocked,
      likes: likes is List<_i2.Like>? ? likes : this.likes?.clone(),
      likeCount: likeCount ?? this.likeCount,
      safeToPublicMarkerSupportID:
          safeToPublicMarkerSupportID ?? this.safeToPublicMarkerSupportID,
    );
  }
}

class ToyTable extends _i1.Table {
  ToyTable({super.tableRelation}) : super(tableName: 'toys') {
    ownerConsumerID = _i1.ColumnInt(
      'ownerConsumerID',
      this,
    );
    name = _i1.ColumnString(
      'name',
      this,
    );
    description = _i1.ColumnString(
      'description',
      this,
    );
    imageUrlList = _i1.ColumnSerializable(
      'imageUrlList',
      this,
    );
    age = _i1.ColumnEnum(
      'age',
      this,
      _i1.EnumSerialization.byIndex,
    );
    gender = _i1.ColumnEnum(
      'gender',
      this,
      _i1.EnumSerialization.byIndex,
    );
    condition = _i1.ColumnEnum(
      'condition',
      this,
      _i1.EnumSerialization.byIndex,
    );
    createdAt = _i1.ColumnDateTime(
      'createdAt',
      this,
    );
    isPublic = _i1.ColumnBool(
      'isPublic',
      this,
    );
    isLocked = _i1.ColumnBool(
      'isLocked',
      this,
    );
    likeCount = _i1.ColumnInt(
      'likeCount',
      this,
    );
    safeToPublicMarkerSupportID = _i1.ColumnString(
      'safeToPublicMarkerSupportID',
      this,
    );
  }

  late final _i1.ColumnInt ownerConsumerID;

  late final _i1.ColumnString name;

  late final _i1.ColumnString description;

  late final _i1.ColumnSerializable imageUrlList;

  late final _i1.ColumnEnum<_i2.ToyAge> age;

  late final _i1.ColumnEnum<_i2.ToyGender> gender;

  late final _i1.ColumnEnum<_i2.ToyCondition> condition;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnBool isPublic;

  late final _i1.ColumnBool isLocked;

  _i2.LikeTable? ___likes;

  _i1.ManyRelation<_i2.LikeTable>? _likes;

  late final _i1.ColumnInt likeCount;

  late final _i1.ColumnString safeToPublicMarkerSupportID;

  _i2.LikeTable get __likes {
    if (___likes != null) return ___likes!;
    ___likes = _i1.createRelationTable(
      relationFieldName: '__likes',
      field: Toy.t.id,
      foreignField: _i2.Like.t.toyId,
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
      field: Toy.t.id,
      foreignField: _i2.Like.t.toyId,
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
        ownerConsumerID,
        name,
        description,
        imageUrlList,
        age,
        gender,
        condition,
        createdAt,
        isPublic,
        isLocked,
        likeCount,
        safeToPublicMarkerSupportID,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'likes') {
      return __likes;
    }
    return null;
  }
}

@Deprecated('Use ToyTable.t instead.')
ToyTable tToy = ToyTable();

class ToyInclude extends _i1.IncludeObject {
  ToyInclude._({_i2.LikeIncludeList? likes}) {
    _likes = likes;
  }

  _i2.LikeIncludeList? _likes;

  @override
  Map<String, _i1.Include?> get includes => {'likes': _likes};

  @override
  _i1.Table get table => Toy.t;
}

class ToyIncludeList extends _i1.IncludeList {
  ToyIncludeList._({
    _i1.WhereExpressionBuilder<ToyTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Toy.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Toy.t;
}

class ToyRepository {
  const ToyRepository._();

  final attach = const ToyAttachRepository._();

  final attachRow = const ToyAttachRowRepository._();

  Future<List<Toy>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ToyTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ToyTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ToyTable>? orderByList,
    _i1.Transaction? transaction,
    ToyInclude? include,
  }) async {
    return session.dbNext.find<Toy>(
      where: where?.call(Toy.t),
      orderBy: orderBy?.call(Toy.t),
      orderByList: orderByList?.call(Toy.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Toy?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ToyTable>? where,
    int? offset,
    _i1.OrderByBuilder<ToyTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ToyTable>? orderByList,
    _i1.Transaction? transaction,
    ToyInclude? include,
  }) async {
    return session.dbNext.findFirstRow<Toy>(
      where: where?.call(Toy.t),
      orderBy: orderBy?.call(Toy.t),
      orderByList: orderByList?.call(Toy.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Toy?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    ToyInclude? include,
  }) async {
    return session.dbNext.findById<Toy>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<Toy>> insert(
    _i1.Session session,
    List<Toy> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<Toy>(
      rows,
      transaction: transaction,
    );
  }

  Future<Toy> insertRow(
    _i1.Session session,
    Toy row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<Toy>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Toy>> update(
    _i1.Session session,
    List<Toy> rows, {
    _i1.ColumnSelections<ToyTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<Toy>(
      rows,
      columns: columns?.call(Toy.t),
      transaction: transaction,
    );
  }

  Future<Toy> updateRow(
    _i1.Session session,
    Toy row, {
    _i1.ColumnSelections<ToyTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<Toy>(
      row,
      columns: columns?.call(Toy.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Toy> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<Toy>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Toy row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<Toy>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ToyTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<Toy>(
      where: where(Toy.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ToyTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<Toy>(
      where: where?.call(Toy.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class ToyAttachRepository {
  const ToyAttachRepository._();

  Future<void> likes(
    _i1.Session session,
    Toy toy,
    List<_i2.Like> like,
  ) async {
    if (like.any((e) => e.id == null)) {
      throw ArgumentError.notNull('like.id');
    }
    if (toy.id == null) {
      throw ArgumentError.notNull('toy.id');
    }

    var $like = like.map((e) => e.copyWith(toyId: toy.id)).toList();
    await session.dbNext.update<_i2.Like>(
      $like,
      columns: [_i2.Like.t.toyId],
    );
  }
}

class ToyAttachRowRepository {
  const ToyAttachRowRepository._();

  Future<void> likes(
    _i1.Session session,
    Toy toy,
    _i2.Like like,
  ) async {
    if (like.id == null) {
      throw ArgumentError.notNull('like.id');
    }
    if (toy.id == null) {
      throw ArgumentError.notNull('toy.id');
    }

    var $like = like.copyWith(toyId: toy.id);
    await session.dbNext.updateRow<_i2.Like>(
      $like,
      columns: [_i2.Like.t.toyId],
    );
  }
}
