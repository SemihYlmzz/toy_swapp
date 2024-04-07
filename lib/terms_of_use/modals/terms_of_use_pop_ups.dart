import 'package:flutter/material.dart';

import '../terms_of_use.dart';

class TermsOfUsePopUps {
  static void showAcceptTermsPopUp(BuildContext context) {
    showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (_) => AcceptTermsPopUp(context),
    );
  }
}
