import 'package:freezed_annotation/freezed_annotation.dart';

part 'local_database_exception.freezed.dart';

@freezed
sealed class LocalDatabaseException
    with _$LocalDatabaseException
    implements Exception {
  const factory LocalDatabaseException.unknown() =
      LocalDatabaseExceptionUnknown;
}
