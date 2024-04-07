part of 'app_bloc.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    required bool isSignedIn,
    Failure? failure,
  }) = _AppState;
}
