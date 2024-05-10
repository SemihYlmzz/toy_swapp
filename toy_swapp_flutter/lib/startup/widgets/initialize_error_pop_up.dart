import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../startup.dart';


class StartupInitializeErrorPopUp extends StatelessWidget {
  const StartupInitializeErrorPopUp({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Oops!'),
      content: const SingleChildScrollView(
        child: ListBody(
          children: <Widget>[
            Text(
              'Something went wrong. '
              'We are unable to start the app.',
            ),
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          child: const Text('Retry'),
          onPressed: () {
            context.read<StartupBloc>().add(
                  const StartupEvent.initializeAllDependencies(),
                );
            // Not Go Router so maybePop is Safe to pop.
            Navigator.maybePop(context);
          },
        ),
      ],
    );
  }
}
