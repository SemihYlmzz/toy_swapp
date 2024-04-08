import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toy_swapp/terms_of_use/terms_of_use.dart';
import '../app.dart';

extension TermsPopUpDisplayer on AppBlocListeners {
  BlocListener<AppBloc, AppState> termsPopUpDisplayer() {
    return BlocListener(
      listener: (context, state) {
        if (state.isTermsAcceptedBefore == null) {
          return;
        }
        if (state.isTermsAcceptedBefore!) {
          return;
        }
        TermsOfUsePopUps.showTermsOfUseAcceptance(context);
      },
    );
  }
}
