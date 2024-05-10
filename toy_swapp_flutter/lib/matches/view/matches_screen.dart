import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_widgets/shared_widgets.dart';

import '../matches.dart';

class MatchesScreen extends StatelessWidget {
  const MatchesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final matchesBlocListeners = MatchesBlocListeners();

    return BlocProvider(
      create: (context) => MatchesBloc(),
      child: MultiBlocListener(
        listeners: [
          matchesBlocListeners.errorDisplayer(),
        ],
        child: BlocSelector<MatchesBloc, MatchesState, bool>(
          selector: (state) => state.isLoading,
          builder: (context, isLoading) {
            return LoadingScreen(
              isLoading: isLoading,
              size: MediaQuery.sizeOf(context),
              child: const MatchesView(),
            );
          },
        ),
      ),
    );
  }
}
