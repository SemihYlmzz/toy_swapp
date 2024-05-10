import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_widgets/shared_widgets.dart';

import '../terms_acceptance.dart';

class TermsAcceptanceScreen extends StatelessWidget {
  const TermsAcceptanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final termsAcceptanceBlocListeners = TermsAcceptanceBlocListeners();

    return BlocProvider(
      create: (context) => TermsAcceptanceBloc(
        appMetadataRepository: context.read(),
        appPreferencesRepository: context.read(),
      )..add(const TermsAcceptanceEvent.checkIsTermsAccepted()),
      child: MultiBlocListener(
        listeners: [
          termsAcceptanceBlocListeners.errorDisplayer(),
          termsAcceptanceBlocListeners.noNeedAcceptanceNavigator(),
          termsAcceptanceBlocListeners.acceptedNavigator(),
        ],
        child: BlocSelector<TermsAcceptanceBloc, TermsAcceptanceState, bool>(
          selector: (state) => state.isLoading,
          builder: (context, isLoading) {
            return LoadingScreen(
              isLoading: isLoading,
              size: MediaQuery.sizeOf(context),
              child: const TermsAcceptanceView(),
            );
          },
        ),
      ),
    );
  }
}
