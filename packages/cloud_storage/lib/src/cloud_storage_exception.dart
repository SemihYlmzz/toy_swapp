import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:toy_swapp/errors/errors.dart';

part 'cloud_storage_exception.freezed.dart';

@freezed
sealed class CloudStorageException
    with _$CloudStorageException
    implements Failure {
  const factory CloudStorageException.unknown() =
      CloudStorageExceptionUnknown;
}
