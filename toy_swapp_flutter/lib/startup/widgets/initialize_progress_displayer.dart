import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../startup.dart';

class InitializeProgressDisplayer extends StatefulWidget {
  const InitializeProgressDisplayer({super.key});

  @override
  State<InitializeProgressDisplayer> createState() =>
      _InitializeProgressDisplayerState();
}

class _InitializeProgressDisplayerState
    extends State<InitializeProgressDisplayer> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Tween<double> _tween;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _tween = Tween<double>(begin: 0, end: 1);

    _controller.addListener(() {
      setState(() {
        progressValue = _tween.evaluate(_controller);
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  double progressValue = 0;

  void updateProgress(double newValue) {
    _controller.animateTo(
      newValue,
      duration: const Duration(milliseconds: 270),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocSelector<StartupBloc, StartupState, double>(
      selector: (state) {
        updateProgress(state.progressValue);
        return state.progressValue;
      },
      builder: (context, state) {
        return Center(
          child: SizedBox(
            width: 320,
            height: 4,
            child: LinearProgressIndicator(
              value: progressValue,
              color: Colors.orangeAccent,
            ),
          ),
        );
      },
    );
  }
}
