import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../account_settings.dart';

extension AccountSettingsClearStateOnNavigatorScreen
    on AccountSettingsBlocListeners {
  BlocListener<AccountSettingsCubit, AccountSettingsCubitState>
      clearStateOnNavigatorScreen() {
    return BlocListener(
      listener: (context, state) async {
        final currentViewState = state.currentViewState;

        if (currentViewState != AccountSettingsViewState.navigation) {
          return;
        }
        await Future<void>.delayed(Durations.long1);
        if (!context.mounted) {
          return;
        }
        context.read<AccountSettingsCubit>().clearState();
      },
    );
  }
}
