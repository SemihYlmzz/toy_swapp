part of 'toys_bloc.dart';

@freezed
sealed class ToysEvent with _$ToysEvent {
  const factory ToysEvent.fetchLikeableToys({
    @Default(false) bool isStartOver,
  }) = ToysFetchLikeableToys;
  const factory ToysEvent.likeToy({required int toyID}) = ToysLikeToy;
  const factory ToysEvent.unlikeToy({required int toyID}) = ToysUnlikeToy;
}
