part of 'sub_matches_bloc.dart';

@freezed
sealed class SubMatchesEvent with _$SubMatchesEvent {
  const factory SubMatchesEvent.fetch() = SubMatchesFetch;
}
