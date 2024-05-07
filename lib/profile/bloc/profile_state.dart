part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    required int currentConsumerID,
    required List<Toy>? ownedToys,
    @Default(false) bool hasReachedMax,
    @Default(false) bool isLoading,
    @Default(false) bool isInitializing,
    Failure? fetchMoreFailure,
    Failure? fetchLatestToysFailure,
    Failure? failure,
  }) = _ProfileState;
}
