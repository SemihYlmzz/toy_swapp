part of 'profile_bloc.dart';

@freezed
sealed class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.ownedToysUpdated(List<Toy> updatedOwnedToys) =
      ProfileOwnedToysUpdated;
  const factory ProfileEvent.fetchMoreOwnedToys({
    @Default(false) bool startOver,
  }) = ProfileFetchMoreOwnedToys;
  const factory ProfileEvent.openToyToPublic({
    required int toyID,
  }) = ProfileOpenToyToPublic;
  const factory ProfileEvent.closeToyToPublic({
    required int toyID,
  }) = ProfileCloseToyToPublic;
}
