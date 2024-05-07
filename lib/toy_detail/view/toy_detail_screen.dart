import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_widgets/shared_widgets.dart';

import '../toy_detail.dart';

class ToyDetailScreen extends StatelessWidget {
  const ToyDetailScreen({required this.requirements, super.key});
  final ToyDetailScreenRequirements requirements;
  @override
  Widget build(BuildContext context) {
    final toyDetailBlocListeners = ToyDetailBlocListeners();

    return BlocProvider(
      create: (context) => ToyDetailBloc(
        consumerRepository: context.read(),
        toyRepository: context.read(),
      )..add(
          ToyDetailEvent.loadToyAndOwner(toyID: requirements.toy.toyID),
        ),
      child: MultiBlocListener(
        listeners: [
          toyDetailBlocListeners.errorDisplayer(),
          toyDetailBlocListeners.popOnToyDelete(),
        ],
        child: BlocSelector<ToyDetailBloc, ToyDetailState, bool>(
          selector: (state) => state.isLoading,
          builder: (context, isLoading) {
            return LoadingScreen(
              isLoading: isLoading,
              size: MediaQuery.sizeOf(context),
              child: BlocBuilder<ToyDetailBloc, ToyDetailState>(
                builder: (context, state) {
                  // final toy = state.toy;
                  final currentConsumer = state.currentConsumer;
                  // final ownerConsumer = state.ownerConsumer;

                  return ToyDetailView(
                    currentConsumer: currentConsumer!,
                    ownerConsumer:
                        requirements.ownerConsumer ?? currentConsumer,
                    toy: requirements.toy,
                    heroTag: requirements.heroTag,
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}

class ToyLoadingView extends StatelessWidget {
  const ToyLoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
