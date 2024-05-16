part of 'support_toy_acceptance_bloc.dart';

@freezed
class SupportToyAcceptanceState with _$SupportToyAcceptanceState {
   const factory SupportToyAcceptanceState({
    required String authID,
    @Default([]) List<ToyAndOwnerConsumer> acceptableToys,
    @Default(false) bool isFetching,
    @Default(false) bool hasReachedMax,
    @Default(false) bool isLoading,
    Failure? fetchFailure,
    Failure? failure,
  }) = _SupportToyAcceptanceState;
}
