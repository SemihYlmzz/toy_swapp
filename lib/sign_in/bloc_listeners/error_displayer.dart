import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../sign_in.dart';

extension ErrorDisplayer on SignInBlocListeners {
  BlocListener<SignInBloc, SignInState> errorDisplayer() {
    return BlocListener(
      listener: (context, state) {
        final errorMessage = state.errorMessage;
        if (errorMessage == null) {
          return;
        }
        ScaffoldMessenger.of(context)
          ..clearSnackBars()
          ..showSnackBar(
            SnackBar(
              content: Text(errorMessage),
              backgroundColor: Theme.of(context).colorScheme.error,
            ),
          );
      },
    );
  }
}
