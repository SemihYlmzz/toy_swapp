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
        BlocProvider(
          create: (context) => AccountSettingsBloc(
            consumerRepository: context.read(),
            authRepository: context.read(),
          ),
        ),
        BlocProvider(
          create: (context) => AccountSettingsCubit(
            imageService: context.read(),
          ),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          accountSettingsBlocListeners.errorDisplayer(),
          accountSettingsBlocListeners.clearStateOnNavigatorScreen(),
          accountSettingsBlocListeners.displayNavigatorOnSuccessUpdate(),
        ],
        child: Builder(
          builder: (context) {
            final isBlocLoading = context.select(
              (AccountSettingsBloc bloc) => bloc.state.isLoading,
            );
            final isCubitLoading = context.select(
              (AccountSettingsCubit cubit) => cubit.state.isLoading,
            );

            return LoadingScreen(
              isLoading: isBlocLoading || isCubitLoading,
              size: MediaQuery.sizeOf(context),
              child: const AccountSettingsView(),
            );
          },
        ),
      ),
    );
  }
}
