/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class Support extends _i1.TableRow {
  Support._({
    int? id,
    required this.authId,
    required this.firstName,
    required this.lastName,
  }) : super(id);

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

  static final t = SupportTable();

  static const db = SupportRepository._();

  String authId;

  String firstName;

  String lastName;

  @override
  _i1.Table get table => t;

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

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'authId': authId,
      'firstName': firstName,
      'lastName': lastName,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'authId': authId,
      'firstName': firstName,
      'lastName': lastName,
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
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<Support>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<SupportTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Support>(
      where: where != null ? where(Support.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findRow instead.')
  static Future<Support?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<SupportTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Support>(
      where: where != null ? where(Support.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Support?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Support>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<SupportTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Support>(
      where: where(Support.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    Support row, {
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
    Support row, {
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
    Support row, {
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
    _i1.WhereExpressionBuilder<SupportTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Support>(
      where: where != null ? where(Support.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static SupportInclude include() {
    return SupportInclude._();
  }

  static SupportIncludeList includeList({
    _i1.WhereExpressionBuilder<SupportTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<SupportTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<SupportTable>? orderByList,
    SupportInclude? include,
  }) {
    return SupportIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Support.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Support.t),
      include: include,
    );
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

class SupportTable extends _i1.Table {
  SupportTable({super.tableRelation}) : super(tableName: 'supports') {
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
  }

  late final _i1.ColumnString authId;

  late final _i1.ColumnString firstName;

  late final _i1.ColumnString lastName;

  @override
  List<_i1.Column> get columns => [
        id,
        authId,
        firstName,
        lastName,
      ];
}

@Deprecated('Use SupportTable.t instead.')
SupportTable tSupport = SupportTable();

class SupportInclude extends _i1.IncludeObject {
  SupportInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Support.t;
}

class SupportIncludeList extends _i1.IncludeList {
  SupportIncludeList._({
    _i1.WhereExpressionBuilder<SupportTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Support.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Support.t;
}

class SupportRepository {
  const SupportRepository._();

  Future<List<Support>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<SupportTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<SupportTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<SupportTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<Support>(
      where: where?.call(Support.t),
      orderBy: orderBy?.call(Support.t),
      orderByList: orderByList?.call(Support.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Support?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<SupportTable>? where,
    int? offset,
    _i1.OrderByBuilder<SupportTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<SupportTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<Support>(
      where: where?.call(Support.t),
      orderBy: orderBy?.call(Support.t),
      orderByList: orderByList?.call(Support.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Support?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<Support>(
      id,
      transaction: transaction,
    );
  }

  Future<List<Support>> insert(
    _i1.Session session,
    List<Support> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<Support>(
      rows,
      transaction: transaction,
    );
  }

  Future<Support> insertRow(
    _i1.Session session,
    Support row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<Support>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Support>> update(
    _i1.Session session,
    List<Support> rows, {
    _i1.ColumnSelections<SupportTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<Support>(
      rows,
      columns: columns?.call(Support.t),
      transaction: transaction,
    );
  }

  Future<Support> updateRow(
    _i1.Session session,
    Support row, {
    _i1.ColumnSelections<SupportTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<Support>(
      row,
      columns: columns?.call(Support.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Support> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<Support>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Support row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<Support>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<SupportTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<Support>(
      where: where(Support.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<SupportTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<Support>(
      where: where?.call(Support.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
