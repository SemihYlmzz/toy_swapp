import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:toy_swapp/errors/errors.dart';

part 'current_user_preferences_repository_failure.freezed.dart';

@freezed
sealed class CurrentUserPreferencesRepositoryFailure
    with _$CurrentUserPreferencesRepositoryFailure
    implements Failure {
  const factory CurrentUserPreferencesRepositoryFailure.unknown() =
      CurrentUserPreferencesRepositoryFailureUnknown;

  const factory CurrentUserPreferencesRepositoryFailure.initRequired() =
      CurrentUserPreferencesRepositoryFailureInitRequired;
}
