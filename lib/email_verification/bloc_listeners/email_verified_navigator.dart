import 'package:flutter_bloc/flutter_bloc.dart';
import '../../account_registration/account_registration.dart';

import '../email_verification.dart';

extension VerifiedEmailNavigator on EmailVerificationBlocListeners {
  BlocListener<EmailVerificationBloc, EmailVerificationState>
      verifiedEmailNavigator() {
    return BlocListener(
      listener: (context, state) {
        if (!state.isEmailVerified) {
          return;
        }
        AccountRegistrationRouter.instance.go(context);
      },
    );
  }
}
