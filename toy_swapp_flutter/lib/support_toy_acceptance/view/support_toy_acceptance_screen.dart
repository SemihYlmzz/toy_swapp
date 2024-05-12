import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_widgets/shared_widgets.dart';

import '../support_toy_acceptance.dart';

class SupportToyAcceptanceScreen extends StatelessWidget {
  const SupportToyAcceptanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final supportToyAcceptanceBlocListeners =
        SupportToyAcceptanceBlocListeners();

    return BlocProvider(
      create: (context) => SupportToyAcceptanceBloc(
        toyRepository: context.read(),
      )..add(
          const SupportToyAcceptanceEvent.startWatchAcceptableToys(),
        ),
      child: MultiBlocListener(
        listeners: [
          supportToyAcceptanceBlocListeners.errorDisplayer(),
        ],
        child: BlocSelector<SupportToyAcceptanceBloc, SupportToyAcceptanceState,
            bool>(
          selector: (state) => state.isLoading,
          builder: (context, isLoading) {
            return LoadingScreen(
              isLoading: isLoading,
              size: MediaQuery.sizeOf(context),
              child: const SupportToyAcceptanceView(),
            );
          },
        ),
      ),
    );
  }
}
