import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:toy_swapp/errors/errors.dart';

part 'consumer_repository_exception.freezed.dart';

@freezed
sealed class ConsumerRepositoryException
    with _$ConsumerRepositoryException
    implements Failure {
  const factory ConsumerRepositoryException.unknown() =
      ConsumerRepositoryExceptionUnknown;
  const factory ConsumerRepositoryException.noConsumerFound() =
      ConsumerRepositoryExceptionNoConsumerFound;
}
