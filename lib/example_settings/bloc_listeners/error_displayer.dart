import 'package:flutter_bloc/flutter_bloc.dart';

import '../example_settings.dart';

extension ExampleSettingsErrorDisplayer on ExampleSettingsBlocListeners {
  BlocListener<ExampleSettingsBloc, ExampleSettingsState> errorDisplayer() {
    return BlocListener(
      listener: (context, state) {
        final errorMessage = state.errorMessage;
        if (errorMessage == null) {
          return;
        }
        print(errorMessage);
        // ErrorSnackbars.showSnackBar(context, errorMessage);
      },
    );
  }
}
