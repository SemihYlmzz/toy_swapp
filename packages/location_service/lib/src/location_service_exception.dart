import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:toy_swapp/errors/errors.dart';

part 'location_service_exception.freezed.dart';

@freezed
sealed class LocationServiceException
    with _$LocationServiceException
    implements Failure {
  const factory LocationServiceException.unknown() =
      LocationServiceExceptionUnknown;
}
