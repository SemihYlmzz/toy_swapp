import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toy_swapp/initializers/initializers.dart';

import '../startup.dart';

class StartupScreen extends StatelessWidget {
  const StartupScreen({
    required FutureOr<Widget> Function(
      AppRequirements appRequirements,
    ) application,
    required AppRequirementsInitializer appRequirementsInitializer,
    super.key,
  })  : _application = application,
        _appRequirementsInitializer = appRequirementsInitializer;

  final FutureOr<Widget> Function(AppRequirements appRequirements) _application;
  final AppRequirementsInitializer _appRequirementsInitializer;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => StartupBloc(
        appRequirementsInitializer: _appRequirementsInitializer,
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
    );
  }
}
