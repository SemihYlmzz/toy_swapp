import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_widgets/shared_widgets.dart';

import '../account_initializer.dart';

class AccountInitializerScreen extends StatelessWidget {
  const AccountInitializerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final accountInitializerBlocListeners = AccountInitializerBlocListeners();

    return BlocProvider(
      create: (context) => AccountInitializerBloc(),
      child: MultiBlocListener(
        listeners: [
          accountInitializerBlocListeners.errorDisplayer(),
        ],
        child:
            BlocSelector<AccountInitializerBloc, AccountInitializerState, bool>(
          selector: (state) => state.isLoading,
          builder: (context, isLoading) {
            return LoadingScreen(
              isLoading: isLoading,
              size: MediaQuery.sizeOf(context),
              child: const AccountInitializerView(),
            );
          },
        ),
      ),
    );
  }
}
