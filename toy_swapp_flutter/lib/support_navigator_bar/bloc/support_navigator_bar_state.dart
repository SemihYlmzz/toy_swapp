part of 'support_navigator_bar_bloc.dart';

@freezed
class SupportNavigatorBarState with _$SupportNavigatorBarState {
   const factory SupportNavigatorBarState({
    @Default(false) bool isLoading,
    Failure? failure,
  }) = _SupportNavigatorBarState;
}
