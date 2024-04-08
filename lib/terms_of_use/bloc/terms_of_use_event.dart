part of 'terms_of_use_bloc.dart';

@freezed
sealed class TermsOfUseEvent with _$TermsOfUseEvent {
  const factory TermsOfUseEvent.acceptTermsOfUse() = TermsOfUseAcceptTermsOfUse;
}
