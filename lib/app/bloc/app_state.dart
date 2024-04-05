part of 'app_bloc.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    required CurrentUserPreferences currentUserPreferences,
    Failure? failure,
    @Default(false) bool isLoading,
  }) = _AppState;
}
