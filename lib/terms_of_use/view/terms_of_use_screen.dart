import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_widgets/shared_widgets.dart';
import 'package:toy_swapp/app/app.dart';
import 'package:toy_swapp/sign_in/sign_in.dart';

import '../terms_of_use.dart';

class TermsOfUseScreen extends StatelessWidget {
  const TermsOfUseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final termsOfUseBlocListeners = TermsOfUseBlocListeners();
    final isTermsOfUseAccepted = context.select(
      (AppBloc bloc) => bloc.state.currentUserPreferences!.isTermsOfUseAccepted,
    );
    if (isTermsOfUseAccepted) {
      SignInRouter.instance.go(context);
    }
    return BlocProvider(
      create: (context) => TermsOfUseBloc(
        currentUserPreferencesRepository: context.read(),
      ),
      child: MultiBlocListener(
        listeners: [
          termsOfUseBlocListeners.errorDisplayer(),
        ],
        child: BlocSelector<TermsOfUseBloc, TermsOfUseState, bool>(
          selector: (state) => state.isLoading,
          builder: (context, isLoading) {
            return LoadingScreen(
              isLoading: isLoading,
              size: MediaQuery.sizeOf(context),
              child: const TermsOfUseView(),
            );
          },
        ),
      ),
    );
  }
}
