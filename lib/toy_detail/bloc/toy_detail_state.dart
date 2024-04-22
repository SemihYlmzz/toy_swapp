part of 'toy_detail_bloc.dart';

@freezed
class ToyDetailState with _$ToyDetailState {
  const factory ToyDetailState({
    required Consumer currentConsumer,
    Consumer? toyOwnerConsumer,
    @Default(false) bool isLoading,
    Failure? failure,
  }) = _ToyDetailState;
}
