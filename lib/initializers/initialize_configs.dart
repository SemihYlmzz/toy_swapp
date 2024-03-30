import 'package:flutter/services.dart';

final class InitializeConfigs {
  Future<void> initializeAll() async {
    // Initialize Screen Orientation Configs
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
  }
}
