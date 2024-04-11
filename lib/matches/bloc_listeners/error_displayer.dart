import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import '../../errors/errors.dart';
import '../matches.dart';

extension MatchesErrorDisplayer on MatchesBlocListeners {
  BlocListener<MatchesBloc, MatchesState>
      errorDisplayer() {
    return BlocListener(
      listener: (context, state) {
        final failure = state.failure;
        
        if (failure == null || !context.mounted) {
          return;
        }

        // final errorMessage = FailureLocalizor.localize(failure, context);

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
