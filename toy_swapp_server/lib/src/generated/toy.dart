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

abstract class Toy extends _i1.TableRow implements _i1.ProtocolSerialization {
  Toy._({
    int? id,
    required this.ownerConsumerID,
    required this.name,
    required this.description,
    this.declineReason,
    required this.imageUrlList,
    required this.age,
    required this.gender,
    required this.condition,
    required this.createdAt,
    required this.isPublic,
    required this.isLocked,
    this.likes,
    required this.likeCount,
    this.acceptDeciderSupportID,
    this.isAccepted,
  }) : super(id);

  factory Toy({
    int? id,
    required int ownerConsumerID,
    required String name,
    required String description,
    String? declineReason,
    required List<_i2.ToyImageUrls> imageUrlList,
    required _i2.ToyAge age,
    required _i2.ToyGender gender,
    required _i2.ToyCondition condition,
    required DateTime createdAt,
    required bool isPublic,
    required bool isLocked,
    List<_i2.Like>? likes,
    required int likeCount,
    int? acceptDeciderSupportID,
    bool? isAccepted,
  }) = _ToyImpl;

  factory Toy.fromJson(Map<String, dynamic> jsonSerialization) {
    return Toy(
      id: jsonSerialization['id'] as int?,
      ownerConsumerID: jsonSerialization['ownerConsumerID'] as int,
      name: jsonSerialization['name'] as String,
      description: jsonSerialization['description'] as String,
      declineReason: jsonSerialization['declineReason'] as String?,
      imageUrlList: (jsonSerialization['imageUrlList'] as List)
          .map((e) => _i2.ToyImageUrls.fromJson((e as Map<String, dynamic>)))
          .toList(),
      age: _i2.ToyAge.fromJson((jsonSerialization['age'] as int)),
      gender: _i2.ToyGender.fromJson((jsonSerialization['gender'] as int)),
      condition:
          _i2.ToyCondition.fromJson((jsonSerialization['condition'] as int)),
      createdAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
      isPublic: jsonSerialization['isPublic'] as bool,
      isLocked: jsonSerialization['isLocked'] as bool,
      likes: (jsonSerialization['likes'] as List?)
          ?.map((e) => _i2.Like.fromJson((e as Map<String, dynamic>)))
          .toList(),
      likeCount: jsonSerialization['likeCount'] as int,
      acceptDeciderSupportID:
          jsonSerialization['acceptDeciderSupportID'] as int?,
      isAccepted: jsonSerialization['isAccepted'] as bool?,
    );
  }

  static final t = ToyTable();

  static const db = ToyRepository._();

  int ownerConsumerID;

  String name;

  String description;

  String? declineReason;

  List<_i2.ToyImageUrls> imageUrlList;

  _i2.ToyAge age;

  _i2.ToyGender gender;

  _i2.ToyCondition condition;

  DateTime createdAt;

  bool isPublic;

  bool isLocked;

  List<_i2.Like>? likes;

  int likeCount;

  int? acceptDeciderSupportID;

  bool? isAccepted;

  @override
  _i1.Table get table => t;

  Toy copyWith({
    int? id,
    int? ownerConsumerID,
    String? name,
    String? description,
    String? declineReason,
    List<_i2.ToyImageUrls>? imageUrlList,
    _i2.ToyAge? age,
    _i2.ToyGender? gender,
    _i2.ToyCondition? condition,
    DateTime? createdAt,
    bool? isPublic,
    bool? isLocked,
    List<_i2.Like>? likes,
    int? likeCount,
    int? acceptDeciderSupportID,
    bool? isAccepted,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'ownerConsumerID': ownerConsumerID,
      'name': name,
      'description': description,
      if (declineReason != null) 'declineReason': declineReason,
      'imageUrlList': imageUrlList.toJson(valueToJson: (v) => v.toJson()),
      'age': age.toJson(),
      'gender': gender.toJson(),
      'condition': condition.toJson(),
      'createdAt': createdAt.toJson(),
      'isPublic': isPublic,
      'isLocked': isLocked,
      if (likes != null) 'likes': likes?.toJson(valueToJson: (v) => v.toJson()),
      'likeCount': likeCount,
      if (acceptDeciderSupportID != null)
        'acceptDeciderSupportID': acceptDeciderSupportID,
      if (isAccepted != null) 'isAccepted': isAccepted,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'ownerConsumerID': ownerConsumerID,
      'name': name,
      'description': description,
      if (declineReason != null) 'declineReason': declineReason,
      'imageUrlList':
          imageUrlList.toJson(valueToJson: (v) => v.toJsonForProtocol()),
      'age': age.toJson(),
      'gender': gender.toJson(),
      'condition': condition.toJson(),
      'createdAt': createdAt.toJson(),
      'isPublic': isPublic,
      'isLocked': isLocked,
      if (likes != null)
        'likes': likes?.toJson(valueToJson: (v) => v.toJsonForProtocol()),
      'likeCount': likeCount,
      if (acceptDeciderSupportID != null)
        'acceptDeciderSupportID': acceptDeciderSupportID,
      if (isAccepted != null) 'isAccepted': isAccepted,
    };
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

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ToyImpl extends Toy {
  _ToyImpl({
    int? id,
    required int ownerConsumerID,
    required String name,
    required String description,
    String? declineReason,
    required List<_i2.ToyImageUrls> imageUrlList,
    required _i2.ToyAge age,
    required _i2.ToyGender gender,
    required _i2.ToyCondition condition,
    required DateTime createdAt,
    required bool isPublic,
    required bool isLocked,
    List<_i2.Like>? likes,
    required int likeCount,
    int? acceptDeciderSupportID,
    bool? isAccepted,
  }) : super._(
          id: id,
          ownerConsumerID: ownerConsumerID,
          name: name,
          description: description,
          declineReason: declineReason,
          imageUrlList: imageUrlList,
          age: age,
          gender: gender,
          condition: condition,
          createdAt: createdAt,
          isPublic: isPublic,
          isLocked: isLocked,
          likes: likes,
          likeCount: likeCount,
          acceptDeciderSupportID: acceptDeciderSupportID,
          isAccepted: isAccepted,
        );

  @override
  Toy copyWith({
    Object? id = _Undefined,
    int? ownerConsumerID,
    String? name,
    String? description,
    Object? declineReason = _Undefined,
    List<_i2.ToyImageUrls>? imageUrlList,
    _i2.ToyAge? age,
    _i2.ToyGender? gender,
    _i2.ToyCondition? condition,
    DateTime? createdAt,
    bool? isPublic,
    bool? isLocked,
    Object? likes = _Undefined,
    int? likeCount,
    Object? acceptDeciderSupportID = _Undefined,
    Object? isAccepted = _Undefined,
  }) {
    return Toy(
      id: id is int? ? id : this.id,
      ownerConsumerID: ownerConsumerID ?? this.ownerConsumerID,
      name: name ?? this.name,
      description: description ?? this.description,
      declineReason:
          declineReason is String? ? declineReason : this.declineReason,
      imageUrlList: imageUrlList ?? this.imageUrlList.clone(),
      age: age ?? this.age,
      gender: gender ?? this.gender,
      condition: condition ?? this.condition,
      createdAt: createdAt ?? this.createdAt,
      isPublic: isPublic ?? this.isPublic,
      isLocked: isLocked ?? this.isLocked,
      likes: likes is List<_i2.Like>? ? likes : this.likes?.clone(),
      likeCount: likeCount ?? this.likeCount,
      acceptDeciderSupportID: acceptDeciderSupportID is int?
          ? acceptDeciderSupportID
          : this.acceptDeciderSupportID,
      isAccepted: isAccepted is bool? ? isAccepted : this.isAccepted,
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
    declineReason = _i1.ColumnString(
      'declineReason',
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
    acceptDeciderSupportID = _i1.ColumnInt(
      'acceptDeciderSupportID',
      this,
    );
    isAccepted = _i1.ColumnBool(
      'isAccepted',
      this,
    );
  }

  late final _i1.ColumnInt ownerConsumerID;

  late final _i1.ColumnString name;

  late final _i1.ColumnString description;

  late final _i1.ColumnString declineReason;

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

  late final _i1.ColumnInt acceptDeciderSupportID;

  late final _i1.ColumnBool isAccepted;

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
        declineReason,
        imageUrlList,
        age,
        gender,
        condition,
        createdAt,
        isPublic,
        isLocked,
        likeCount,
        acceptDeciderSupportID,
        isAccepted,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'likes') {
      return __likes;
    }
    return null;
  }
}

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
    return session.db.find<Toy>(
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
    return session.db.findFirstRow<Toy>(
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
    return session.db.findById<Toy>(
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
    return session.db.insert<Toy>(
      rows,
      transaction: transaction,
    );
  }

  Future<Toy> insertRow(
    _i1.Session session,
    Toy row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Toy>(
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
    return session.db.update<Toy>(
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
    return session.db.updateRow<Toy>(
      row,
      columns: columns?.call(Toy.t),
      transaction: transaction,
    );
  }

  Future<List<Toy>> delete(
    _i1.Session session,
    List<Toy> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Toy>(
      rows,
      transaction: transaction,
    );
  }

  Future<Toy> deleteRow(
    _i1.Session session,
    Toy row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Toy>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Toy>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ToyTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Toy>(
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
    return session.db.count<Toy>(
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
    await session.db.update<_i2.Like>(
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
    await session.db.updateRow<_i2.Like>(
      $like,
      columns: [_i2.Like.t.toyId],
    );
  }
}
