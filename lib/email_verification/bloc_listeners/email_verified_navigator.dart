import 'package:flutter_bloc/flutter_bloc.dart';
import '../../home/home.dart';

import '../email_verification.dart';

extension VerifiedEmailNavigator on EmailVerificationBlocListeners {
  BlocListener<EmailVerificationBloc, EmailVerificationState>
      verifiedEmailNavigator() {
    return BlocListener(
      listener: (context, state) {
        if (!state.isEmailVerified) {
          return;
        }
        HomeRouter.instance.go(context);
      },
    );
  }
}
