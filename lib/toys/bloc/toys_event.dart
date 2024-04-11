part of 'toys_bloc.dart';

@freezed
sealed class ToysEvent with _$ToysEvent {
  const factory ToysEvent.fetch() = ToysFetch;
}
