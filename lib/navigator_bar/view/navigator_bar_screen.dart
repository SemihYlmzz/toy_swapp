import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_widgets/shared_widgets.dart';

import '../navigator_bar.dart';

class NavigatorBarScreen extends StatelessWidget {
  const NavigatorBarScreen({
    required this.navigationShell,
    super.key,
  });
  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    final navigatorBarBlocListeners = NavigatorBarBlocListeners();

    return BlocProvider(
      create: (context) => NavigatorBarBloc(),
      child: MultiBlocListener(
        listeners: [
          navigatorBarBlocListeners.errorDisplayer(),
        ],
        child: BlocSelector<NavigatorBarBloc, NavigatorBarState, bool>(
          selector: (state) => state.isLoading,
          builder: (context, isLoading) {
            return LoadingScreen(
              isLoading: isLoading,
              size: MediaQuery.sizeOf(context),
              child: NavigatorBarView(
                navigationShell: navigationShell,
              ),
            );
          },
        ),
      ),
    );
  }
}
