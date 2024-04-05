import 'package:app_preferences_repository/app_preferences_repository_api.dart';
import 'package:flutter/material.dart';
import 'package:toy_swapp/errors/errors.dart';
import 'package:toy_swapp/l10n/l10n.dart';

class FailureLocalizor {
  FailureLocalizor._();

  static String localize(Failure failure, BuildContext context) {
    if (failure is AppPreferencesRepositoryFailure) {
      return failure.map(
        initRequired: (initRequired) => context.l10n.aboutUsDescription,
        unknown: (unknown) => context.l10n.aboutUs,
      );
    } else {
      return context.l10n.rateUsDescription;
    }
  }
}
