import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toy_swapp/sign_in/sign_in.dart';
import '../terms_acceptance.dart';

extension TermsAcceptanceNoNeedAcceptanceNavigator
    on TermsAcceptanceBlocListeners {
  BlocListener<TermsAcceptanceBloc, TermsAcceptanceState>
      noNeedAcceptanceNavigator() {
    return BlocListener(
      listener: (context, state) {
        final needTermAcceptance = state.needTermAcceptance;

        if (needTermAcceptance == null) {
          return;
        }
        if (needTermAcceptance) {
          return;
        }

        SignInRouter.instance.go(context);
      },
    );
  }
}
