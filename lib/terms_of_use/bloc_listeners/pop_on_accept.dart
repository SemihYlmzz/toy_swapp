import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../terms_of_use.dart';

extension PopOnAccept on TermsOfUseBlocListeners {
  BlocListener<TermsOfUseBloc, TermsOfUseState> popOnAccept() {
    return BlocListener(
      listener: (context, state) {
        if (!state.isTermsOfUseAccepted) {
          return;
        }
        Navigator.maybePop(context);
      },
    );
  }
}
