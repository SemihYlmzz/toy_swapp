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
            return Builder(
              builder: (context) {
                final isLoading = context
                    .select((NavigatorBarBloc bloc) => bloc.state.isLoading);
                final isCubitLoading = context
                    .select((NavigatorBarCubit bloc) => bloc.state.isLoading);

                return LoadingScreen(
                  isLoading: isLoading || isCubitLoading,
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
