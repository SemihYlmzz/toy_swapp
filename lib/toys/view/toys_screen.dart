import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../toys.dart';

class ToysScreen extends StatelessWidget {
  const ToysScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final toysBlocListeners = ToysBlocListeners();

    return BlocProvider(
      create: (context) => ToysBloc(
        authRepository: context.read(),
        consumerRepository: context.read(),
        toyRepository: context.read(),
      )..add(const ToysEvent.fetchLikeableToys()),
      child: MultiBlocListener(
        listeners: [
          toysBlocListeners.errorDisplayer(),
        ],
        child: const ToysView(),
      ),
    );
  }
}
