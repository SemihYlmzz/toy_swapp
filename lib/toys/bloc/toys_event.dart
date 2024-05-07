part of 'toys_bloc.dart';

@freezed
sealed class ToysEvent with _$ToysEvent {
  const factory ToysEvent.fetchLikeableToys({
    @Default(false) bool isStartOver,
  }) = ToysFetchLikeableToys;
  const factory ToysEvent.clearFetchMoreFailure() = ToysClearFetchMoreFailure;
  const factory ToysEvent.likeToy({required int toyID}) = ToysLikeToy;
}
