part of 'toys_bloc.dart';

@freezed
class ToysState with _$ToysState {
  const factory ToysState({
    required Consumer currentConsumer,
    @Default([]) List<ToyAndOwnerConsumer> toys,
    @Default([]) List<int> likedToyIDs,
    @Default(false) bool hasReachedMax,
    @Default(true) bool isInitializing,
    @Default(false) bool isLoading,
    Failure? initializingFailure,
    Failure? fetchMoreFailure,
    Failure? failure,
  }) = _ToysState;
}
