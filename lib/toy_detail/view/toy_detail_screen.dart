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
      )..add(
          ToyDetailEvent.loadToyOwnerConsumerData(
            toyOwnerAuthId: requirements.toyOwnerAuthId,
          ),
        ),
      child: MultiBlocListener(
        listeners: [
          toyDetailBlocListeners.errorDisplayer(),
        ],
        child: BlocSelector<ToyDetailBloc, ToyDetailState, bool>(
          selector: (state) => state.isLoading,
          builder: (context, isLoading) {
            return LoadingScreen(
              isLoading: isLoading,
              size: MediaQuery.sizeOf(context),
              child: ToyDetailView(
                requirements: requirements,
              ),
            );
          },
        ),
      ),
    );
  }
}
