import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_widgets/shared_widgets.dart';

import '../home.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final homeBlocListeners = HomeBlocListeners();

    return BlocProvider(
      create: (context) => HomeBloc(
        authRepository: context.read(),
      ),
      child: MultiBlocListener(
        listeners: [
          homeBlocListeners.errorDisplayer(),
        ],
        child: BlocSelector<HomeBloc, HomeState, bool>(
          selector: (state) => state.isLoading,
          builder: (context, isLoading) {
            return LoadingScreen(
              isLoading: isLoading,
              size: MediaQuery.sizeOf(context),
              child: const HomeView(),
            );
          },
        ),
      ),
    );
  }
}
