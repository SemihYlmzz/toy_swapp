import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../initializers/initializers.dart';
import '../startup.dart';

extension StartupInitializedNavigator on StartupBlocListeners {
  BlocListener<StartupBloc, StartupState> initializedNavigator({
    required FutureOr<Widget> Function(LocalDatabaseApis localDatabaseApis)
        application,
  }) {
    return BlocListener(
      listener: (context, state) async {},
    );
  }
}
