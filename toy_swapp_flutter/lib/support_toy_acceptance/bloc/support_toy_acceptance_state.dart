part of 'support_toy_acceptance_bloc.dart';

@freezed
class SupportToyAcceptanceState with _$SupportToyAcceptanceState {
   const factory SupportToyAcceptanceState({
    @Default(false) bool isLoading,
    Failure? failure,
  }) = _SupportToyAcceptanceState;
}
