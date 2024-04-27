part of 'profile_bloc.dart';

@freezed
sealed class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.fetchOwnedToys() = ProfileFetchOwnedToys;
  const factory ProfileEvent.ownedToysUpdated(List<Toy> updatedOwnedToys) =
      ProfileOwnedToysUpdated;
  const factory ProfileEvent.fetchMoreOwnedToys() = ProfileFetchMoreOwnedToys;
}
