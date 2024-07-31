/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class Support extends _i1.TableRow
    implements _i1.ProtocolSerialization {
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

  factory Support.fromJson(Map<String, dynamic> jsonSerialization) {
    return Support(
      id: jsonSerialization['id'] as int?,
      authId: jsonSerialization['authId'] as String,
      firstName: jsonSerialization['firstName'] as String,
      lastName: jsonSerialization['lastName'] as String,
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
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'authId': authId,
      'firstName': firstName,
      'lastName': lastName,
    };
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

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
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
    return session.db.find<Support>(
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
    return session.db.findFirstRow<Support>(
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
    return session.db.findById<Support>(
      id,
      transaction: transaction,
    );
  }

  Future<List<Support>> insert(
    _i1.Session session,
    List<Support> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Support>(
      rows,
      transaction: transaction,
    );
  }

  Future<Support> insertRow(
    _i1.Session session,
    Support row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Support>(
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
    return session.db.update<Support>(
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
    return session.db.updateRow<Support>(
      row,
      columns: columns?.call(Support.t),
      transaction: transaction,
    );
  }

  Future<List<Support>> delete(
    _i1.Session session,
    List<Support> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Support>(
      rows,
      transaction: transaction,
    );
  }

  Future<Support> deleteRow(
    _i1.Session session,
    Support row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Support>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Support>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<SupportTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Support>(
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
    return session.db.count<Support>(
      where: where?.call(Support.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
