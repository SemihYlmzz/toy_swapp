part of 'app_bloc.dart';

@freezed
sealed class AppEvent with _$AppEvent {
  const factory AppEvent.checkIsTermsAccepted() = AppCheckIsTermsAccepted;
  const factory AppEvent.appPreferencesUpdated({
    required AppPreferences updatedValue,
  }) = AppPreferencesUpdated;
}
