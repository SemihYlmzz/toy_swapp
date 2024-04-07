import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'terms_of_use_acceptance.freezed.dart';
part 'terms_of_use_acceptance.g.dart';

@freezed
class TermsOfUseAcceptance with _$TermsOfUseAcceptance {
  const factory TermsOfUseAcceptance({
    required int acceptedTermsReleaseNumber,
    required int acceptedAppBuildNumber,
  }) = _TermsOfUseAcceptance;

  factory TermsOfUseAcceptance.fromJson(Map<String, Object?> json) =>
      _$TermsOfUseAcceptanceFromJson(json);
}
