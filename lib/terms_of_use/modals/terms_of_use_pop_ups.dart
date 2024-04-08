import 'package:flutter/material.dart';

import '../terms_of_use.dart';

class TermsOfUsePopUps {
  static void showTermsOfUseAcceptance(BuildContext buildContext) {
    showDialog<void>(
      context: buildContext,
      barrierDismissible: false,
      builder: (_) => const TermsOfUseAcceptancePopUp(),
    );
  }
}
