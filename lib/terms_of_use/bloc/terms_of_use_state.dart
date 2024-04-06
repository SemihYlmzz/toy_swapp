part of 'terms_of_use_bloc.dart';

@freezed
class TermsOfUseState with _$TermsOfUseState {
  const factory TermsOfUseState({
    @Default(false) bool isLoading,
    AppMetadata? appMetadata,
    Failure? failure,
  }) = _TermsOfUseState;
}
