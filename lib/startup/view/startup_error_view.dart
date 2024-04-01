import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toy_swapp/startup/bloc/startup_bloc.dart';

class StartupErrorView extends StatelessWidget {
  const StartupErrorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Something went wrong!'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Retry'),
          onPressed: () => context
              .read<StartupBloc>()
              .add(const StartupEvent.initializeAll()),
        ),
      ),
    );
  }
}
