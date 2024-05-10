part of 'app_bloc.dart';

@freezed
sealed class AppEvent with _$AppEvent {
  const factory AppEvent.updateAppPreferences(
    AppPreferences appPreferences,
  ) = AppUpdateAppPreferences;
}
