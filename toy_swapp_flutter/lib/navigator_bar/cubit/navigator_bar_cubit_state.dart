part of 'navigator_bar_cubit.dart';

@freezed
class NavigatorBarCubitState with _$NavigatorBarCubitState {
  const factory NavigatorBarCubitState({
    required GoRouterState goRouterState,
    required List<NavigatorBarSubGoRoute> subRoutes,
    @Default([]) List<ToyImage> imageUrlList,
    NavigatorBarSubGoRoute? selectedSubRoute,
    @Default(false) bool isLoading,
    Failure? failure,
  }) = _NavigatorBarCubitState;
}
