import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toy_swapp/sign_in/sign_in.dart';
// import '../../errors/errors.dart';
import '../settings.dart';

extension SettingsSignOutNavigator on SettingsBlocListeners {
  BlocListener<SettingsBloc, SettingsState> signOutNavigator() {
    return BlocListener(
      listener: (context, state) {
        final isSignOutCompleted = state.isSignOutCompleted;
        if (!isSignOutCompleted) {
          return;
        }
        SignInRouter.instance.go(context);
      },
    );
  }
}
