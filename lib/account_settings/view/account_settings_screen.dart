import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_widgets/shared_widgets.dart';

import '../account_settings.dart';

class AccountSettingsScreen extends StatelessWidget {
  const AccountSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final accountSettingsBlocListeners = AccountSettingsBlocListeners();

    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AccountSettingsBloc()),
        BlocProvider(create: (context) => AccountSettingsCubit()),
      ],
      child: MultiBlocListener(
        listeners: [
          accountSettingsBlocListeners.errorDisplayer(),
        ],
        child: BlocSelector<AccountSettingsBloc, AccountSettingsState, bool>(
          selector: (state) => state.isLoading,
          builder: (context, isLoading) {
            return LoadingScreen(
              isLoading: isLoading,
              size: MediaQuery.sizeOf(context),
              child: const AccountSettingsView(),
            );
          },
        ),
      ),
    );
  }
}
