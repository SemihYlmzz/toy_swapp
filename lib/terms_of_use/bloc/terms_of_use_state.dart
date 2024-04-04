part of 'terms_of_use_bloc.dart';

@freezed
class TermsOfUseState with _$TermsOfUseState {
   const factory TermsOfUseState({
    @Default(false) bool isLoading,
    Failure? failure,
  }) = _TermsOfUseState;
}
