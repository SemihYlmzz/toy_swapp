import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:toy_swapp/errors/errors.dart';

part 'remote_database_exception.freezed.dart';

@freezed
sealed class RemoteDatabaseException
    with _$RemoteDatabaseException
    implements Failure {
  const factory RemoteDatabaseException.unknown() =
      RemoteDatabaseExceptionUnknown;
}
