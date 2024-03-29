import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_widgets/shared_widgets.dart';
import '../example_settings.dart';

class ExampleSettingsScreen extends StatelessWidget {
  const ExampleSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final exampleSettingsBlocListeners = ExampleSettingsBlocListeners();
    return BlocProvider(
      create: (context) => ExampleSettingsBloc(
        currentUserPreferencesRepository: context.read(),
      ),
      child: MultiBlocListener(
        listeners: [
          exampleSettingsBlocListeners.errorDisplayer(),
        ],
        child: Builder(
          builder: (context) {
            final isLoading = context.select(
              (ExampleSettingsBloc bloc) => bloc.state.isLoading,
            );
            return LoadingScreen(
              isLoading: isLoading,
              size: MediaQuery.sizeOf(context),
              child: const ExampleSettingsView(),
            );
          },
        ),
      ),
    );
  }
}
