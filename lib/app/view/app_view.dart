import 'package:flutter/material.dart';

import '../../themes/themes.dart';

class AppView extends StatelessWidget {
  const AppView({
    required RouterConfig<Object> routerConfig,
    super.key,
  }) : _routerConfig = routerConfig;
  final RouterConfig<Object> _routerConfig;
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: CustomThemeData.themeData(const DefaultDarkPalette()),
      // themeMode: ThemeMode.system,
      routerConfig: _routerConfig,
    );
  }
}
