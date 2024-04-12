part of 'navigator_bar_bloc.dart';

@freezed
class NavigatorBarState with _$NavigatorBarState {
  const factory NavigatorBarState({
    @Default(false) bool isLoading,
    Failure? failure,
  }) = _NavigatorBarState;
}
