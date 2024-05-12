part of 'toys_bloc.dart';

@freezed
class ToysState with _$ToysState {
  const factory ToysState({
    required Consumer currentConsumer,
    @Default([]) List<ToyAndOwnerConsumer> toys,
    @Default([]) List<int> likedToyIDs,
    @Default(false) bool hasReachedMax,
    @Default(false) bool isFetching,
    @Default(false) bool isLoading,
    Failure? fetchFailure,
    Failure? failure,
  }) = _ToysState;
}
