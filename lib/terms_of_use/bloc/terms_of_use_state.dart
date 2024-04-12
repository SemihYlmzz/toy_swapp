part of 'terms_of_use_bloc.dart';

@freezed
class TermsOfUseState with _$TermsOfUseState {
  const factory TermsOfUseState({
    required AppMetadata appMetadata,
    @Default(false) bool isLoading,
    @Default(false) bool isTermsOfUseAccepted,
    Failure? failure,
  }) = _TermsOfUseState;
}
