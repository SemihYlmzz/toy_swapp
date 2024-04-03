part of 'app_bloc.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    CurrentUserPreferences? currentUserPreferences,
    Failure? failure,
    @Default(false) bool isLoading,
    @Default(false) bool isInitError,
  }) = _AppState;
}
