import 'package:freezed_annotation/freezed_annotation.dart';

part 'terms_acceptance.freezed.dart';
part 'terms_acceptance.g.dart';

@freezed
class TermsAcceptance with _$TermsAcceptance {
  const factory TermsAcceptance({
    required int appCoreVersionNumber,
    required int termsReleaseNumber,
  }) = _TermsAcceptance;

  factory TermsAcceptance.fromJson(Map<String, Object?> json) =>
      _$TermsAcceptanceFromJson(json);
  factory TermsAcceptance.empty() => const TermsAcceptance(
        appCoreVersionNumber: 0,
        termsReleaseNumber: 0,
      );
}
