import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../account_initializer.dart';

class AccountInitializerScreen extends StatelessWidget {
  const AccountInitializerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final accountInitializerBlocListeners = AccountInitializerBlocListeners();

    return BlocProvider(
      create: (context) => AccountInitializerBloc(
        authRepository: context.read(),
        consumerRepository: context.read(),
      )..add(const AccountInitializerEvent.fetchAccountData()),
      child: MultiBlocListener(
        listeners: [
          accountInitializerBlocListeners.errorDisplayer(),
        ],
        child: Builder(
          builder: (context) {
            final fetchFailure = context.select(
              (AccountInitializerBloc bloc) =>
                  bloc.state.fetchAccountDataFailure,
            );
            return fetchFailure == null
                ? const AccountInitializerView()
                : const AccountInitializerErrorView();
          },
        ),
      ),
    );
  }
}
