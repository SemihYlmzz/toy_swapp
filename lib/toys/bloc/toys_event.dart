part of 'toys_bloc.dart';

@freezed
sealed class ToysEvent with _$ToysEvent {
  const factory ToysEvent.fetchLatest10() = ToysFetchLatest10;
  const factory ToysEvent.fetch10AfterNewestToy() = ToysFetch10AfterNewestToy;
  const factory ToysEvent.fetch10BeforeOldestToy() = ToysFetch10BeforeOldestToy;
}
