import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:toy_swapp/errors/errors.dart';

part 'cloud_storage_firebase_storage_exception.freezed.dart';

@freezed
sealed class CloudStorageFirebaseStorageException
    with _$CloudStorageFirebaseStorageException
    implements Failure {
  const factory CloudStorageFirebaseStorageException.unknown() =
      CloudStorageFirebaseStorageExceptionUnknown;
}
