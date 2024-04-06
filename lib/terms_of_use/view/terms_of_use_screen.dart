import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_widgets/shared_widgets.dart';

import '../../app/app.dart';
import '../terms_of_use.dart';

class TermsOfUseScreen extends StatelessWidget {
  const TermsOfUseScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // Temporary
    final lastUpdatedTermsDate = DateTime(2025, 02, 02);

    final termsOfUseBlocListeners = TermsOfUseBlocListeners();
    final termsOfUseAcceptedDate = context.select(
      (AppBloc bloc) => bloc.state.appPreferences.termsOfUseAcceptedDate,
    );

    return BlocProvider(
      create: (context) => TermsOfUseBloc(
        appPreferencesRepository: context.read(),
      ),
      child: MultiBlocListener(
        listeners: [
          termsOfUseBlocListeners.errorDisplayer(),
          termsOfUseBlocListeners.termsAcceptedNavigator(
            context,
            lastUpdatedTermsDate: lastUpdatedTermsDate,
          ),
        ],
        child: BlocSelector<TermsOfUseBloc, TermsOfUseState, bool>(
          selector: (state) => state.isLoading,
          builder: (context, isLoading) {
            if (termsOfUseAcceptedDate != null) {
              return TermsOfUseUpdatedView(
                openDevangsPrivacyPolicy: () =>
                    openDevangsPrivacyPolicy(context),
                openTermsOfService: () => openTermsOfService(context),
                openToySwappPrivacyPolicy: () =>
                    openToySwappPrivacyPolicy(context),
              );
            }
            return LoadingScreen(
              isLoading: isLoading,
              size: MediaQuery.sizeOf(context),
              child: TermsOfUseView(
                openDevangsPrivacyPolicy: () =>
                    openDevangsPrivacyPolicy(context),
                openTermsOfService: () => openTermsOfService(context),
                openToySwappPrivacyPolicy: () =>
                    openToySwappPrivacyPolicy(context),
              ),
            );
          },
        ),
      ),
    );
  }

  void openTermsOfService(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute<void>(
        builder: (_) => const DisplayTermsOfServiceView(),
      ),
    );
  }

  void openDevangsPrivacyPolicy(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute<void>(
        builder: (_) => const DisplayDevangsPrivacyNoticesView(),
      ),
    );
  }

  void openToySwappPrivacyPolicy(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute<void>(
        builder: (_) => const DisplayToySwappPrivacyNoticesView(),
      ),
    );
  }
}
