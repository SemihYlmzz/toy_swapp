part of 'support_toy_acceptance_bloc.dart';

@freezed
sealed class SupportToyAcceptanceEvent with _$SupportToyAcceptanceEvent {
  const factory SupportToyAcceptanceEvent.fetchAcceptableToys({
    @Default(false) bool isRefresh,
  }) = SupportToyAcceptanceEventFetchAcceptableToys;

  const factory SupportToyAcceptanceEvent.acceptToy(
    Toy toy,
  ) = SupportToyAcceptanceEventAcceptToy;
  const factory SupportToyAcceptanceEvent.declineToy({
    required Toy toy,
    required String reason,
 } ) = SupportToyAcceptanceEventDeclineToy;
}
