part of 'create_toy_bloc.dart';

@freezed
sealed class CreateToyEvent with _$CreateToyEvent {
  const factory CreateToyEvent.createOwnedToy({
    required String name,
    required String description,
    required List<ToyImage> imageUrlList,
    required ToyAge toyAge,
    required ToyGender toyGender,
    required ToyCondition toyCondition,
  }) = CreateToyCreateOwnedToy;
}
