part of 'create_toy_cubit.dart';

@freezed
class CreateToyCubitState with _$CreateToyCubitState {
  const factory CreateToyCubitState({
    @Default(ToyName.pure()) ToyName toyName,
    @Default(ToyDescription.pure()) ToyDescription toyDescription,
    @Default([]) List<ToyImage> imageUrlList,
    @Default(null) ToyAge? toyAge,
    @Default(null) ToyGender? toyGender,
    @Default(null) ToyCondition? toyCondition,
    @Default(false) bool isLoading,
    Failure? failure,
  }) = _CreateToyCubitState;
}
