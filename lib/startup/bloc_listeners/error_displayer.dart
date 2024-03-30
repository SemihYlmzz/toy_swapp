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
      listener: (context, state) async {
        if (state.isInitializing) {
          return;
        }
        if (state.isInitializeError) {
          return;
        }
        if (state.localDatabaseApis == null) {
          return;
        }

        final app = await application(
          state.localDatabaseApis!,
        );
        if (!context.mounted) {
          return;
        }
        await Navigator.of(context).push(
          MaterialPageRoute<void>(builder: (_) => app),
        );
      },
    );
  }
}
