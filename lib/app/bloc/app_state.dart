part of 'app_bloc.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    required AppMetadata appMetadata,
    required AppPreferences appPreferences,
    @Default(false) bool isLoading,
    @Default(false) bool needTermAcceptance,
    Failure? failure,
  }) = _AppState;
}
