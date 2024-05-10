import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_widgets/shared_widgets.dart';

import '../support_navigator_bar.dart';

class SupportNavigatorBarScreen extends StatelessWidget {
  const SupportNavigatorBarScreen({
    required this.navigationShell,
    required this.goRouterState,
    required this.subRoutes,
    super.key,
  });

  final StatefulNavigationShell navigationShell;
  final GoRouterState goRouterState;
  final List<SupportNavigatorBarSubGoRoute> subRoutes;

  @override
  Widget build(BuildContext context) {
    final supportNavigatorBarBlocListeners = SupportNavigatorBarBlocListeners();

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SupportNavigatorBarBloc(
            authRepository: context.read(),
          ),
        ),
        BlocProvider(
          create: (context) => SupportNavigatorBarCubit(
            goRouterState: goRouterState,
            subRoutes: subRoutes,
          ),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          supportNavigatorBarBlocListeners.errorDisplayer(),
        ],
        child: Builder(
          builder: (context) {
            context
                .read<SupportNavigatorBarCubit>()
                .updateGoRouterState(goRouterState);
            return BlocSelector<SupportNavigatorBarBloc,
                SupportNavigatorBarState, bool>(
              selector: (state) => state.isLoading,
              builder: (context, isLoading) {
                return LoadingScreen(
                  isLoading: isLoading,
                  size: MediaQuery.sizeOf(context),
                  child: SupportNavigatorBarView(
                    navigationShell: navigationShell,
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
