part of 'app_bloc.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    required AppPreferences appPreferences,
    required AppMetadata appMetadata,
    Failure? failure,
    @Default(false) bool isLoading,
  }) = _AppState;
}
