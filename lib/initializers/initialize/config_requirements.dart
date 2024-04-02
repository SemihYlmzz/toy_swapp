import 'package:flutter/services.dart';

final class ConfigRequirements {
  Future<bool> initialize() async {
    // Initialize Screen Orientation Configs
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
    return true;
  }
}
