part of 'terms_acceptance_bloc.dart';

@freezed
sealed class TermsAcceptanceEvent with _$TermsAcceptanceEvent {
  const factory TermsAcceptanceEvent.checkIsTermsAccepted() =
      TermsAcceptanceCheckIsTermsAccepted;
  const factory TermsAcceptanceEvent.appPreferencesUpdated(
    AppPreferences updatedValue,
  ) = TermsAcceptanceAppPreferencesUpdated;
  const factory TermsAcceptanceEvent.acceptTermsOfUse() =
      TermsAcceptanceAcceptTermsOfUse;
}
