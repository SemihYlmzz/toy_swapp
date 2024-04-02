import 'package:flutter/material.dart';
import 'package:toy_swapp/l10n/l10n.dart';

extension AuthSignInLocalizationExtension on BuildContext {
  AuthSignInLocalization get authSignInLocalization {
    return AuthSignInLocalization(this);
  }
}

class AuthSignInLocalization {
  const AuthSignInLocalization(this.context);
  final BuildContext context;

  // "forgotPassword": "Forgot Password ?",
  String get forgotPassword => context.l10n.forgotPassword;

  // "signIn": "Sign In",
  String get signIn => context.l10n.signIn;

  // "email": "E-Mail",
  String get email => context.l10n.email;

  // "password": "Password",
  String get password => context.l10n.password;

  // "signInWithGoogle": "Sign In With Google",
  String get signInWithGoogle => context.l10n.signInWithGoogle;

  // "signUpNow": "Sign Up Now",
  String get signUpNow => context.l10n.signUpNow;
}
