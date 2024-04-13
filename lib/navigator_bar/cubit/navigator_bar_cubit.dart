import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';

import '../navigator_bar.dart';

part 'navigator_bar_cubit_state.dart';
part 'navigator_bar_cubit.freezed.dart';

class NavigatorBarCubit extends Cubit<NavigatorBarCubitState> {
  NavigatorBarCubit({
    required GoRouterState goRouterState,
    required List<NavigatorBarSubGoRoute> subRoutes,
  }) : super(
          NavigatorBarCubitState(
            goRouterState: goRouterState,
            subRoutes: subRoutes,
          ),
        );

  void updateGoRouterState(GoRouterState goRouterState) {
    final subRoute = state.subRoutes
        .where((element) => element.name == goRouterState.topRoute!.name)
        .firstOrNull;
    if (subRoute == null) {
      return;
    }
    emit(
      state.copyWith(goRouterState: goRouterState, selectedSubRoute: subRoute),
    );
  }
}
