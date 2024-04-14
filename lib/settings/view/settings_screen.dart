import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_widgets/shared_widgets.dart';

import '../settings.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final settingsBlocListeners = SettingsBlocListeners();

    return BlocProvider(
      create: (context) => SettingsBloc(
        authRepository: context.read(),
        consumerRepository: context.read(),
        appMetadataRepository: context.read(),
      ),
      child: MultiBlocListener(
        listeners: [
          settingsBlocListeners.errorDisplayer(),
          settingsBlocListeners.signOutNavigator(),
        ],
        child: BlocSelector<SettingsBloc, SettingsState, bool>(
          selector: (state) => state.isLoading,
          builder: (context, isLoading) {
            return LoadingScreen(
              isLoading: isLoading,
              size: MediaQuery.sizeOf(context),
              child: const SettingsView(),
            );
          },
        ),
      ),
    );
  }
}
