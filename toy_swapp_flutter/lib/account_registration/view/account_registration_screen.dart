import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_widgets/shared_widgets.dart';

import '../account_registration.dart';

class AccountRegistrationScreen extends StatelessWidget {
  const AccountRegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final accountRegistrationBlocListeners = AccountRegistrationBlocListeners();
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AccountRegistrationBloc(
            authRepository: context.read(),
            consumerRepository: context.read(),
          ),
        ),
        BlocProvider(
          create: (context) => AccountRegistrationCubit(
            permissionService: context.read(),
            imageService: context.read(),
            locationService: context.read(),
          ),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          accountRegistrationBlocListeners.errorDisplayer(),
        ],
        child: BlocSelector<AccountRegistrationBloc, AccountRegistrationState,
            bool>(
          selector: (state) => state.isLoading,
          builder: (context, isLoading) {
            return LoadingScreen(
              isLoading: isLoading,
              size: MediaQuery.sizeOf(context),
              child: const AccountRegistrationView(),
            );
          },
        ),
      ),
    );
  }
}
