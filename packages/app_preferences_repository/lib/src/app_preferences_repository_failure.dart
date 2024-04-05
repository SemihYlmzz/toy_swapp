import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:toy_swapp/errors/errors.dart';

part 'app_preferences_repository_failure.freezed.dart';

@freezed
sealed class AppPreferencesRepositoryFailure
    with _$AppPreferencesRepositoryFailure
    implements Failure {
  const factory AppPreferencesRepositoryFailure.unknown() =
      AppPreferencesRepositoryUnknown;

  const factory AppPreferencesRepositoryFailure.initRequired() =
      AppPreferencesRepositoryInitRequired;
}
