import 'package:flutter/material.dart';
import '../../l10n/l10n.dart';

extension TermsOfUseLocalizationExtension on BuildContext {
  TermsOfUseLocalization get termsOfUseLocalization {
    return TermsOfUseLocalization(this);
  }
}

class TermsOfUseLocalization {
  const TermsOfUseLocalization(this.context);
  final BuildContext context;

  // "termsOfUse": "Terms Of Use",
  String get termsOfUse => context.l10n.termsOfUse;

  // "requiredToContinueText": "This is required to continue.",
  String get requiredToContinueText => context.l10n.requiredToContinueText;

  // "accept": "Accept",
  String get accept => context.l10n.accept;

  // "termsOfUseText": "I Agree to the <termsOfService>Terms of Service</termsOfService>, have read the Privacy Notices for <devangs>Devangs</devangs> and <toySwapp>Toy Swapp</toySwapp>, and confirm that I am at least 13 years old.",
  String termsOfUseText(
    String termsOfService,
    String devangs,
    String toySwapp,
  ) =>
      context.l10n.termsOfUseText(termsOfService, devangs, toySwapp);

  // "termsOfUseUpdatedText": "I Agree to the <termsOfService>Terms of Service</termsOfService>, have read the Privacy Notices for <devangs>Devangs</devangs> and <toySwapp>Toy Swapp</toySwapp>.",
  String termsOfUseUpdatedText(
    String termsOfService,
    String devangs,
    String toySwapp,
  ) =>
      context.l10n.termsOfUseUpdatedText(termsOfService, devangs, toySwapp);
}
