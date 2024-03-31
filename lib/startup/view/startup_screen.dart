import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toy_swapp/initializers/initializers.dart';
import '../../themes/themes.dart';

import '../startup.dart';

class StartupScreen extends StatelessWidget {
  const StartupScreen({
    required FutureOr<Widget> Function(
      LocalDatabaseApis localDatabaseApis,
    ) application,
    required InitializeConfigs initializeConfigs,
    required InitializeLocalDatabaseApis initializeLocalDatabaseApis,
    required InitializeLoggers initializeLoggers,
    super.key,
  })  : _application = application,
        _initializeConfigs = initializeConfigs,
        _initializeLocalDatabaseApis = initializeLocalDatabaseApis,
        _initializeLoggers = initializeLoggers;

  final FutureOr<Widget> Function(
    LocalDatabaseApis localDatabaseApis,
  ) _application;
  final InitializeConfigs _initializeConfigs;
  final InitializeLocalDatabaseApis _initializeLocalDatabaseApis;
  final InitializeLoggers _initializeLoggers;

  @override
  Widget build(BuildContext context) {
    final startupBlocListeners = StartupBlocListeners();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: CustomThemeData.themeData(const DefaultDarkPalette()),
      home: BlocProvider(
        create: (context) => StartupBloc(
          initializeConfigs: _initializeConfigs,
          initializeLocalDatabaseApis: _initializeLocalDatabaseApis,
          initializeLoggers: _initializeLoggers,
        )..add(const StartupEvent.initializeAll()),
        child: MultiBlocListener(
          listeners: [
            startupBlocListeners.initializedNavigator(
              application: _application,
            ),
          ],
          child: BlocBuilder<StartupBloc, StartupState>(
            builder: (context, state) {
              // if(state.isInitializeError){
              //   return StartupErrorView();
              // }
              return StartupView(
                application: _application,
              );
            },
          ),
        ),
      ),
    );
  }
}
