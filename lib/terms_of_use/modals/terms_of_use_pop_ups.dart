import 'package:app_metadata_repository/app_metadata_repository.dart';
import 'package:flutter/material.dart';

import '../terms_of_use.dart';

class TermsOfUsePopUps {
  static void showTermsOfUseAcceptance(
    BuildContext buildContext,
    AppMetadata appMetadata,
  ) {
    showDialog<void>(
      context: buildContext,
      useSafeArea: false,
      barrierDismissible: false,
      builder: (_) => TermsOfUseAcceptancePopUp(
        repositoryContext: buildContext,
        appMetadata: appMetadata,
      ),
    );
  }
}
