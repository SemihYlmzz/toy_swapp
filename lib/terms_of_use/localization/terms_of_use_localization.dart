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

  // "buttonName": "Terms Of Use Button",
  String get buttonName => 'Terms Of Use Button';

  // "appBarTitle": "Terms Of Use Screen",
  String get appBarTitle => 'Terms Of Use Screen';
}
