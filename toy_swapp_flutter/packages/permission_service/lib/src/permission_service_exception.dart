import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:toy_swapp/errors/errors.dart';

part 'permission_service_exception.freezed.dart';

@freezed
sealed class PermissionServiceException
    with _$PermissionServiceException
    implements Failure {
  const factory PermissionServiceException.unknown() =
      PermissionServiceExceptionUnknown;
  const factory PermissionServiceException.inProgress() =
      PermissionServiceExceptionInProgress;
}
