import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../app.dart';

class AppView extends StatelessWidget {
  const AppView({required RouterConfig<Object> routerConfig, super.key})
      : _routerConfig = routerConfig;
  final RouterConfig<Object> _routerConfig;

  @override
  Widget build(BuildContext context) {
    final appBlocListeners = AppBlocListeners();
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      // themeMode: ThemeMode.system,
      routerConfig: _routerConfig,
      builder: (context, child) {
        return MultiBlocListener(
          listeners: [
            appBlocListeners.termsPopUpDisplayer(),
          ],
          child: child!,
        );
      },
    );
  }
}
