part of 'support_toy_acceptance_bloc.dart';

@freezed
sealed class SupportToyAcceptanceEvent with _$SupportToyAcceptanceEvent {
  const factory SupportToyAcceptanceEvent.fetch() = SupportToyAcceptanceFetch;
}
