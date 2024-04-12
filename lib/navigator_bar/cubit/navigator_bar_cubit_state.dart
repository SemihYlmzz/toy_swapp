part of 'navigator_bar_cubit.dart';

@freezed
class NavigatorBarCubitState with _$NavigatorBarCubitState {
  const factory NavigatorBarCubitState({
    required GoRouterState goRouterState,
    required List<NavigatorBarSubGoRoute> subRoutes,
    NavigatorBarSubGoRoute? selectedSubRoute,
  }) = _NavigatorBarCubitState;
}
