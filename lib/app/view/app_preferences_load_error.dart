import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_widgets/shared_widgets.dart';
import '../app.dart';

class AppPreferencesLoadError extends StatelessWidget {
  const AppPreferencesLoadError({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Preferences Not Loaded'),
      ),
      body: BaseColumn(
        children: [
          const Text('Something went wrong while loading app preferences'),
          ElevatedButton(
            onPressed: () {
              context.read<AppBloc>().add(
                    AppEvent.initializeCurrentUserPreferences(),
                  );
            },
            child: const Text('Retry'),
          ),
        ],
      ),
    );
  }
}
