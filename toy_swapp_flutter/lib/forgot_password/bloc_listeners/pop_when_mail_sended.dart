import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
// import '../../errors/errors.dart';
import '../forgot_password.dart';

extension PopWhenMailSended on ForgotPasswordBlocListeners {
  BlocListener<ForgotPasswordBloc, ForgotPasswordState> popWhenMailSended() {
    return BlocListener(
      listener: (context, state) {
        final isResetPasswordSend = state.isResetPasswordSend;

        if (!isResetPasswordSend) {
          return;
        }
        if (context.canPop()) context.pop();
      },
    );
  }
}
