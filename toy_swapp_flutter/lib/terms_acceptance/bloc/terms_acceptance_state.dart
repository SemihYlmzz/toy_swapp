part of 'terms_acceptance_bloc.dart';

@freezed
class TermsAcceptanceState with _$TermsAcceptanceState {
  const factory TermsAcceptanceState({
    required AppMetadata appMetadata,
    required AppPreferences appPreferences,
    @Default(false) bool isLoading,
    @Default(false) bool isTermsOfUseAccepted,
    bool? needTermAcceptance,
    Failure? failure,
  }) = _TermsAcceptanceState;
}
