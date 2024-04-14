part of 'sub_matches_bloc.dart';

@freezed
class SubMatchesState with _$SubMatchesState {
  const factory SubMatchesState({
    required String oldNote,
    @Default(false) bool isLoading,
    Failure? failure,
  }) = _SubMatchesState;
}
