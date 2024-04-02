import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toy_swapp/initializers/initializers.dart';
import '../../themes/themes.dart';

import '../startup.dart';

class StartupScreen extends StatelessWidget {
  const StartupScreen({
    required FutureOr<Widget> Function(
      AppRequirements appRequirements,
    ) application,
    required AppInitializer appInitializer,
    super.key,
  })  : _application = application,
        _appInitializer = appInitializer;

  final FutureOr<Widget> Function(AppRequirements appRequirements) _application;
  final AppInitializer _appInitializer;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: CustomThemeData.themeData(const DefaultDarkPalette()),
      home: BlocProvider(
        create: (context) => StartupBloc(
          appInitializer: _appInitializer,
        )..add(const StartupEvent.initializeAll()),
        child: BlocBuilder<StartupBloc, StartupState>(
          builder: (context, state) {
            if (state.isInitializeError && state.displayErrorScreen) {
              return const StartupErrorView();
            }
            return StartupView(
              application: _application,
            );
          },
        ),
      ),
    );
  }
}
