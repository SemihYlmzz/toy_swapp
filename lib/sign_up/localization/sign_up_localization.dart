import 'package:flutter/material.dart';
import '../../l10n/l10n.dart';

extension SignUpLocalizationExtension on BuildContext {
  SignUpLocalization get signUpLocalization {
    return SignUpLocalization(this);
  }
}

class SignUpLocalization {
  const SignUpLocalization(this.context);
  final BuildContext context;

  // "buttonName": "Sign Up Button",
  String get buttonName => 'Sign Up Button';

  // "appBarTitle": "Sign Up Screen",
  String get appBarTitle => 'Sign Up Screen';
}
