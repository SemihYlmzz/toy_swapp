part of 'create_toy_cubit.dart';

@freezed
class CreateToyCubitState with _$CreateToyCubitState {
  const factory CreateToyCubitState({
    required List<ToyImage> imageUrlList,
    @Default(ToyName.pure()) ToyName toyName,
    @Default(ToyDescription.pure()) ToyDescription toyDescription,
    @Default(null) ToyAge? toyAge,
    @Default(null) ToyGender? toyGender,
    @Default(null) ToyCondition? toyCondition,
    @Default(false) bool isLoading,
    Failure? failure,
  }) = _CreateToyCubitState;
}
