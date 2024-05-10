part of 'support_navigator_bar_cubit.dart';

@freezed
class SupportNavigatorBarCubitState with _$SupportNavigatorBarCubitState {
  const factory SupportNavigatorBarCubitState({
    required GoRouterState goRouterState,
    required List<SupportNavigatorBarSubGoRoute> subRoutes,
    SupportNavigatorBarSubGoRoute? selectedSubRoute,
    @Default(false) bool isLoading,
    Failure? failure,
  }) = _SupportNavigatorBarCubitState;
}
