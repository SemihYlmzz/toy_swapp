import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toy_swapp/sign_in/sign_in.dart';
import '../terms_acceptance.dart';

extension TermsAcceptanceAcceptedNavigator on TermsAcceptanceBlocListeners {
  BlocListener<TermsAcceptanceBloc, TermsAcceptanceState> acceptedNavigator() {
    return BlocListener(
      listener: (context, state) {
        final isTermsOfUseAccepted = state.isTermsOfUseAccepted;

        if (!isTermsOfUseAccepted) {
          return;
        }
        SignInRouter.instance.go(context);
      },
    );
  }
}
