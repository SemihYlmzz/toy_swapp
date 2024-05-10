part of 'app_bloc.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    required AppPreferences appPreferences,
    @Default(false) bool isLoading,
    Failure? failure,
  }) = _AppState;
}
