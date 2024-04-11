part of 'toys_bloc.dart';

@freezed
class ToysState with _$ToysState {
   const factory ToysState({
    @Default(false) bool isLoading,
    Failure? failure,
  }) = _ToysState;
}
