import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_widgets/shared_widgets.dart';
import 'package:toy_swapp/startup/bloc/startup_bloc.dart';
import 'package:toy_swapp/startup/constants/startup_constant_strings.dart';

class StartupErrorView extends StatelessWidget {
  const StartupErrorView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      safeArea: true,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  StartupConstantStrings.dependencyInitializeError,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Center(
            child: ElevatedButton(
              child: const Text(StartupConstantStrings.retry),
              onPressed: () => context
                  .read<StartupBloc>()
                  .add(const StartupEvent.initializeAll()),
            ),
          ),
        ],
      ),
    );
  }
}
