part of 'support_toy_acceptance_bloc.dart';

@freezed
sealed class SupportToyAcceptanceEvent with _$SupportToyAcceptanceEvent {
  const factory SupportToyAcceptanceEvent.updateAcceptableToys(
    List<ToyAndOwnerConsumer> updatedAcceptableToys,
  ) = SupportToyAcceptanceEventUpdateAcceptableToys;
  const factory SupportToyAcceptanceEvent.startWatchAcceptableToys() =
      SupportToyAcceptanceEventStartWatchAcceptableToys;
  const factory SupportToyAcceptanceEvent.stopWatchAcceptableToys() =
      SupportToyAcceptanceEventStopWatchAcceptableToys;
}
