part of 'toys_bloc.dart';

@freezed
sealed class ToysEvent with _$ToysEvent {
  const factory ToysEvent.fetchLikeableToys({
    @Default(false) bool clearBeforeFetch,
  }) = ToysFetchLikeableToys;
  const factory ToysEvent.clearFetchMoreFailure() = ToysClearFetchMoreFailure;
}
