import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_widgets/shared_widgets.dart';

import '../app.dart';

class AppPreferencesInitError extends StatelessWidget {
  const AppPreferencesInitError({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Preferences Not Loaded'),
      ),
      body: BaseColumn(
        children: [
          const Text('Something went wrong while loading app preferences'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  context.read<AppBloc>().add(
                        AppEvent.initializeCurrentUserPreferences(),
                      );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.error,
                ),
                child: const Text('Reset App Preferences'),
              ),
              ElevatedButton(
                onPressed: () {
                  context.read<AppBloc>().add(
                        AppEvent.resetAppPreferences(),
                      );
                },
                child: const Text('Retry'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
