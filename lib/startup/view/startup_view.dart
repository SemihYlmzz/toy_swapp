import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_widgets/shared_widgets.dart';

import '../../initializers/initializers.dart';
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

    return BaseScaffold(
      safeArea: true,
      body: Column(
        children: [
          Expanded(
            child: Center(
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
          ),
          const CompanyCopyright(),
        ],
      ),
    );
  }
}
