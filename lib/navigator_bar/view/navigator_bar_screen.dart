import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_widgets/shared_widgets.dart';

import '../navigator_bar.dart';

class NavigatorBarScreen extends StatelessWidget {
  const NavigatorBarScreen({
    required this.goRouterState,
    required this.navigationShell,
    required this.subRoutes,
    super.key,
  });
  final GoRouterState goRouterState;
  final StatefulNavigationShell navigationShell;
  final List<NavigatorBarSubGoRoute> subRoutes;

  @override
  Widget build(BuildContext context) {
    final navigatorBarBlocListeners = NavigatorBarBlocListeners();

    return MultiBlocProvider(
      providers: [
        BlocProvider<NavigatorBarBloc>(
          create: (context) => NavigatorBarBloc(
            consumerRepository: context.read(),
          ),
        ),
        BlocProvider(
          create: (context) => NavigatorBarCubit(
            goRouterState: goRouterState,
            subRoutes: subRoutes,
            imageService: context.read(),
          ),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          navigatorBarBlocListeners.errorDisplayer(),
          navigatorBarBlocListeners.cubitErrorDisplayer(),
          navigatorBarBlocListeners.openCreateToyBottomSheetOnImagesSelected(),
        ],
        child: Builder(
          builder: (context) {
            context
                .read<NavigatorBarCubit>()
                .updateGoRouterState(goRouterState);
            return BlocSelector<NavigatorBarBloc, NavigatorBarState, bool>(
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
            );
          },
        ),
      ),
    );
  }
}
