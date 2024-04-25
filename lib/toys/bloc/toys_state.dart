part of 'toys_bloc.dart';

@freezed
class ToysState with _$ToysState {
  const factory ToysState({
    @Default([]) List<ToyAndOwnerConsumer> toys,
    @Default(false) bool hasReachedMax,
    @Default(false) bool isLoading,
    Failure? failure,
  }) = _ToysState;
}
