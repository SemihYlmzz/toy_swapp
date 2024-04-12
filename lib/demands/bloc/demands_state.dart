part of 'demands_bloc.dart';

@freezed
class DemandsState with _$DemandsState {
  const factory DemandsState({
    @Default(false) bool isLoading,
    Failure? failure,
  }) = _DemandsState;
}
