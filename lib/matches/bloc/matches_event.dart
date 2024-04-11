part of 'matches_bloc.dart';

@freezed
sealed class MatchesEvent with _$MatchesEvent {
  const factory MatchesEvent.fetch() = MatchesFetch;
}
