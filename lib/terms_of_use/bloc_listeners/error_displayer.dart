import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../terms_of_use.dart';

extension TermsOfUseErrorDisplayer on TermsOfUseBlocListeners {
  BlocListener<TermsOfUseBloc, TermsOfUseState> errorDisplayer() {
    return BlocListener(
      listener: (context, state) {
        final failure = state.failure;

        if (failure == null || !context.mounted) {
          return;
        }

        ScaffoldMessenger.of(context)
          ..clearSnackBars()
          ..showSnackBar(
            SnackBar(
              content: Text(failure.toString()),
              backgroundColor: Theme.of(context).colorScheme.error,
            ),
          );
      },
    );
  }
}
