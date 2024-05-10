import 'package:flutter/services.dart';

class ConfigDependencies {
  const ConfigDependencies();

   Future<void> init() async => SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitDown,
        DeviceOrientation.portraitUp,
      ]);
}
