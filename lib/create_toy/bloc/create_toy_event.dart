part of 'create_toy_bloc.dart';

@freezed
sealed class CreateToyEvent with _$CreateToyEvent {
  const factory CreateToyEvent.createOwnedToy({
    required ToyName toyName,
    required ToyDescription toyDescription,
    required List<ToyImage> imageUrlList,
    required ToyAge toyAge,
    required ToyGender toyGender,
    required ToyCondition toyCondition,
  }) = CreateToyCreateOwnedToy;
}
