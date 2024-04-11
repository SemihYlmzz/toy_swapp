part of 'matches_bloc.dart';

@freezed
class MatchesState with _$MatchesState {
   const factory MatchesState({
    @Default(false) bool isLoading,
    Failure? failure,
  }) = _MatchesState;
}
