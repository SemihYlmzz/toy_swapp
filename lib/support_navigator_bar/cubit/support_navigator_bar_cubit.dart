import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';

import '../../errors/errors.dart';
import '../support_navigator_bar.dart';

part 'support_navigator_bar_cubit_state.dart';
part 'support_navigator_bar_cubit.freezed.dart';

class SupportNavigatorBarCubit extends Cubit<SupportNavigatorBarCubitState> {
  SupportNavigatorBarCubit({
    required GoRouterState goRouterState,
    required List<SupportNavigatorBarSubGoRoute> subRoutes,
  }) : super(
          SupportNavigatorBarCubitState(
            goRouterState: goRouterState,
            subRoutes: subRoutes,
          ),
        );
  void updateGoRouterState(GoRouterState goRouterState) {
    final subRoute = state.subRoutes
        .where((element) => element.name == goRouterState.topRoute!.name)
        .firstOrNull;
    if (subRoute == null) {
      print('1');
      return;
    }
    print('2');
    emit(
      state.copyWith(goRouterState: goRouterState, selectedSubRoute: subRoute),
    );
  }
}
