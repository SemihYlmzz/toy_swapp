import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:toy_swapp/errors/errors.dart';

part 'image_service_exception.freezed.dart';

@freezed
sealed class ImageServiceException
    with _$ImageServiceException
    implements Failure {
  const factory ImageServiceException.unknown() = ImageServiceExceptionUnknown;
  const factory ImageServiceException.notEnoughImages() =
      ImageServiceExceptionNotEnoughImages;
}
