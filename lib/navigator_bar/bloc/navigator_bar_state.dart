part of 'navigator_bar_bloc.dart';

@freezed
class NavigatorBarState with _$NavigatorBarState {
  const factory NavigatorBarState({
    required Consumer currentConsumer,
    @Default(false) bool isLoading,
    Failure? failure,
  }) = _NavigatorBarState;
}
