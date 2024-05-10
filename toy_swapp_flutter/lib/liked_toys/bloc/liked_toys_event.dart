part of 'liked_toys_bloc.dart';

@freezed
sealed class LikedToysEvent with _$LikedToysEvent {
  const factory LikedToysEvent.fetch() = LikedToysFetch;
}
