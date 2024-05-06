import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toy_swapp/account_registration/account_registration.dart';
import '../account_initializer.dart';

extension AccountInitializerAccountRegistrationNavigator
    on AccountInitializerBlocListeners {
  BlocListener<AccountInitializerBloc, AccountInitializerState>
      accountRegistrationNavigator() {
    return BlocListener(
      listener: (context, state) {
        final consumerNeedsCreation = state.consumerNeedsCreation;

        if (!consumerNeedsCreation) {
          return;
        }
        AccountRegistrationRouter.instance.go(context);
      },
    );
  }
}
