import 'package:flutter_bloc/flutter_bloc.dart';
import '../../terms_of_use/terms_of_use.dart';
import '../app.dart';

extension TermsPopUpDisplayer on AppBlocListeners {
  BlocListener<AppBloc, AppState> termsPopUpDisplayer() {
    return BlocListener(
      listener: (context, state) {
        if (!state.needTermAcceptance) {
          return;
        }
        TermsOfUsePopUps.showTermsOfUseAcceptance(context, state.appMetadata);
      },
    );
  }
}
