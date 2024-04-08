import 'package:freezed_annotation/freezed_annotation.dart';

part 'terms_versions.freezed.dart';
part 'terms_versions.g.dart';

@freezed
class TermsVersions with _$TermsVersions {
  factory TermsVersions({
    required int termsReleaseNumber,
    required bool isReleasedTermsUrgent,
    required String termsOfServiceUrl,
    required String devangsPrivacyPolicyUrl,
    required String toySwappPrivacyPolicyUrl,
  }) = _TermsVersions;

  factory TermsVersions.fromJson(Map<String, Object?> json) =>
      _$TermsVersionsFromJson(json);
}
