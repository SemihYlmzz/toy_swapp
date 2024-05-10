part of 'demands_bloc.dart';

@freezed
sealed class DemandsEvent with _$DemandsEvent {
  const factory DemandsEvent.fetch() = DemandsFetch;
}
