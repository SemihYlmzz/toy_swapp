part of 'terms_of_use_bloc.dart';

@freezed
sealed class TermsOfUseEvent with _$TermsOfUseEvent {
  const factory TermsOfUseEvent.loadTermsOfUseVersion() =
      TermsOfUseLoadTermsOfUseVersion;
  const factory TermsOfUseEvent.appMetadataUpdated({
    required AppMetadata appMetadata,
  }) = TermsOfUseAppMetadataUpdated;
  const factory TermsOfUseEvent.acceptTerms() = TermsOfUseAcceptTerms;
}
