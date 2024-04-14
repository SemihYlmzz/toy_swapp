import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_widgets/shared_widgets.dart';

import '../sub_matches.dart';

class SubMatchesScreen extends StatelessWidget {
  const SubMatchesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final subMatchesBlocListeners = SubMatchesBlocListeners();
    return BlocProvider(
      create: (context) => SubMatchesBloc(
        appPreferencesRepository: context.read(),
      ),
      child: MultiBlocListener(
        listeners: [
          subMatchesBlocListeners.errorDisplayer(),
        ],
        child: BlocSelector<SubMatchesBloc, SubMatchesState, bool>(
          selector: (state) => state.isLoading,
          builder: (context, isLoading) {
            return LoadingScreen(
              isLoading: isLoading,
              size: MediaQuery.sizeOf(context),
              child: const SubMatchesView(),
            );
          },
        ),
      ),
    );
  }
}
