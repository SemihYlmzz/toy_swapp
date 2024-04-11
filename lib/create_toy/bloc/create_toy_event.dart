part of 'create_toy_bloc.dart';

@freezed
sealed class CreateToyEvent with _$CreateToyEvent {
  const factory CreateToyEvent.fetch() = CreateToyFetch;
}
