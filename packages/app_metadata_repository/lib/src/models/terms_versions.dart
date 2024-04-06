import 'package:freezed_annotation/freezed_annotation.dart';

part 'terms_versions.freezed.dart';
part 'terms_versions.g.dart';

@freezed
class TermsVersions with _$TermsVersions {
  factory TermsVersions({
    required int termsVersionNumber,
    required int devangsPrivacyPolicyVersionNumber,
    required int toySwappPrivacyPolicyVersionNumber,
  }) = _TermsVersions;

  factory TermsVersions.fromJson(Map<String, Object?> json) =>
      _$TermsVersionsFromJson(json);
}
