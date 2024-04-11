import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_widgets/shared_widgets.dart';

import '../toys.dart';

class ToysScreen extends StatelessWidget {
  const ToysScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final toysBlocListeners = ToysBlocListeners();
  
    return BlocProvider(
      create: (context) => ToysBloc(),
      child: MultiBlocListener(
        listeners: [
          toysBlocListeners.errorDisplayer(),
        ],
        child: BlocSelector<ToysBloc, ToysState, bool>(
          selector: (state) => state.isLoading,
          builder: (context, isLoading) {
            return LoadingScreen(
              isLoading: isLoading,
              size: MediaQuery.sizeOf(context),
              child: const ToysView(),
            );
          },
        ),
      ),
    );
  }
}
