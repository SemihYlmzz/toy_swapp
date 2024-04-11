import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_widgets/shared_widgets.dart';

import '../demands.dart';

class DemandsScreen extends StatelessWidget {
  const DemandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final demandsBlocListeners = DemandsBlocListeners();
  
    return BlocProvider(
      create: (context) => DemandsBloc(),
      child: MultiBlocListener(
        listeners: [
          demandsBlocListeners.errorDisplayer(),
        ],
        child: BlocSelector<DemandsBloc, DemandsState, bool>(
          selector: (state) => state.isLoading,
          builder: (context, isLoading) {
            return LoadingScreen(
              isLoading: isLoading,
              size: MediaQuery.sizeOf(context),
              child: const DemandsView(),
            );
          },
        ),
      ),
    );
  }
}
