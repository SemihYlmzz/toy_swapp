import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toy_swapp/app/app.dart';

import '../../app_themes/app_themes.dart';

class AppView extends StatelessWidget {
  const AppView({
    required RouterConfig<Object> routerConfig,
    super.key,
  }) : _routerConfig = routerConfig;
  final RouterConfig<Object> _routerConfig;
  @override
  Widget build(BuildContext context) {
    final themeMode =
        context.select((AppBloc bloc) => bloc.state.appPreferences.themeMode);
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      darkTheme: CustomThemeData.themeData(const DefaultDarkPalette()),
      themeMode: themeMode,
      routerConfig: _routerConfig,
    );
  }
}
