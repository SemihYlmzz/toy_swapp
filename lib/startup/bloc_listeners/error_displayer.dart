import 'package:flutter_bloc/flutter_bloc.dart';
import '../startup.dart';

extension StartupErrorDisplayer on StartupBlocListeners {
  BlocListener<StartupBloc, StartupState> errorDisplayer() {
    return BlocListener(
      listener: (context, state) {
        final isInitializeError = state.isInitializeError;

        if (!isInitializeError) {
          return;
        }
        // show popup something went wrong and try again button
      },
    );
  }
}
