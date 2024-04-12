part of 'create_toy_bloc.dart';

@freezed
class CreateToyState with _$CreateToyState {
  const factory CreateToyState({
    @Default(false) bool isLoading,
    Failure? failure,
  }) = _CreateToyState;
}
