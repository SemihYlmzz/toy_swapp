import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../startup.dart';

class StartupView extends StatelessWidget {
  const StartupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const StartupAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
              onPressed: () {
                context.read<StartupBloc>().add(
                      const StartupEvent.initializeAllDependencies(),
                    );
              },
              child: const Text('Init Dependencies'),
            ),
          ),
        ],
      ),
    );
  }
}
