import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:toy_swapp/errors/errors.dart';
// import 'package:app_name/errors/errors.dart';

part 'toy_repository_exception.freezed.dart';

@freezed
sealed class ToyRepositoryException
    with _$ToyRepositoryException
    implements Failure {
  const factory ToyRepositoryException.unknown() =
      ToyRepositoryExceptionUnknown;
}
