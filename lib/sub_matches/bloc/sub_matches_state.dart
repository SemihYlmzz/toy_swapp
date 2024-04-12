part of 'sub_matches_bloc.dart';

@freezed
class SubMatchesState with _$SubMatchesState {
  const factory SubMatchesState({
    @Default(false) bool isLoading,
    Failure? failure,
  }) = _SubMatchesState;
}
