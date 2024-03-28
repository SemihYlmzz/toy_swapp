part of 'app_bloc.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    CurrentUserPreferences? currentUserPreferences,
    String? errorMessage,
    @Default(false) bool isLoading,
    @Default(false) bool isInitError,
  }) = _AppState;
}
