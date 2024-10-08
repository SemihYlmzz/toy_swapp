part of 'toy_detail_bloc.dart';

@freezed
class ToyDetailState with _$ToyDetailState {
  const factory ToyDetailState({
    required Consumer? currentConsumer,

    Toy? toy,
    Consumer? ownerConsumer,
    @Default(false) bool isLoading,
    @Default(false) bool isToyDeleted,
    Failure? failure,
  }) = _ToyDetailState;
}
