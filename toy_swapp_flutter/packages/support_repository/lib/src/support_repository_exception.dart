import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:toy_swapp/errors/errors.dart';

part 'support_repository_exception.freezed.dart';

@freezed
sealed class SupportRepositoryException
    with _$SupportRepositoryException
    implements Failure {
  const factory SupportRepositoryException.unknown() =
      SupportRepositoryExceptionUnknown;
}
