import 'package:flutter/material.dart';

import '../startup.dart';

class StartupPopUps {
  const StartupPopUps();
  static void showInitializeError(BuildContext context) {
    showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return const StartupInitializeErrorPopUp();
      },
    );
  }
}
