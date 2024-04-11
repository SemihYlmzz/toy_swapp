import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toy_swapp/account_registration/account_registration.dart';
import '../account_initializer.dart';

extension AccountInitializerNeedAccountRegisterNavigator
    on AccountInitializerBlocListeners {
  BlocListener<AccountInitializerBloc, AccountInitializerState>
      needAccountRegisterNavigator() {
    return BlocListener(
      listener: (context, state) {
        final needAccountRegister = state.needAccountRegister;

        if (!needAccountRegister) {
          return;
        }
        AccountRegistrationRouter.instance.go(context);
      },
    );
  }
}
