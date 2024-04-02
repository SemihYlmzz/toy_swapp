import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toy_swapp/initializers/initializers.dart';

import '../startup.dart';

class StartupView extends StatelessWidget {
  const StartupView({
    required this.application,
    super.key,
  });
  final FutureOr<Widget> Function(AppRequirements appRequirements) application;

  @override
  Widget build(BuildContext context) {
    final hasError = context.select(
      (StartupBloc bloc) => bloc.state.isInitializeError,
    );
    final appRequirements = context.select(
      (StartupBloc bloc) => bloc.state.appRequirements,
    );
    final isInitialized = appRequirements != null;

    return Scaffold(
      appBar: const StartupAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: RepeatlyFade(
              repeat: !hasError && !isInitialized,
              onEnd: () async {
                if (hasError) {
                  context
                      .read<StartupBloc>()
                      .add(const StartupEvent.displayErrorScreen());
                }
                if (isInitialized) {
                  final app = await application(appRequirements);
                  if (!context.mounted) {
                    return;
                  }
                  await Navigator.pushReplacement(
                    context,
                    PageRouteBuilder<void>(
                      pageBuilder: (context, animation1, animation2) => app,
                    ),
                  );
                }
              },
              child: FlutterLogo(
                size: MediaQuery.sizeOf(context).width / 2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RepeatlyFade extends StatefulWidget {
  const RepeatlyFade({
    required this.child,
    required this.repeat,
    required this.onEnd,
    super.key,
  });
  final Widget child;
  final bool repeat;
  final VoidCallback onEnd;

  @override
  State<RepeatlyFade> createState() => _RepeatlyFadeState();
}

class _RepeatlyFadeState extends State<RepeatlyFade>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(vsync: this)
      ..addListener(() {
        if (_animationController.status == AnimationStatus.completed) {
          _animationController.reverse();
        }
        if (_animationController.status == AnimationStatus.dismissed) {
          widget.onEnd();
          if (widget.repeat) {
            _animationController.forward();
          }
        }
      });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Animate(
      effects: const [
        FadeEffect(
          delay: Durations.long1,
          duration: Duration(milliseconds: 1500),
          curve: Curves.easeInOut,
        ),
      ],
      controller: _animationController,
      child: widget.child,
    );
  }
}
