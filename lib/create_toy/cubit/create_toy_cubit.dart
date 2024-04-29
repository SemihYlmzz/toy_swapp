import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:toy_repository/toy_repository.dart';
import 'package:toy_swapp/errors/errors.dart';

part 'create_toy_state.dart';
part 'create_toy_cubit.freezed.dart';

class CreateToyCubit extends Cubit<CreateToyCubitState> {
  CreateToyCubit({
    required List<ToyImage> imageUrlList,
  }) : super(CreateToyCubitState(imageUrlList: imageUrlList));

  // Functions
  void toyNameChanged(String value) {
    final toyName = ToyName.dirty(toyName: value);
    emit(state.copyWith(toyName: toyName));
  }

  void toyDescriptionChanged(String value) {
    final toyDescription = ToyDescription.dirty(toyDescription: value);
    emit(state.copyWith(toyDescription: toyDescription));
  }

  void imageUrlListChanged(List<ToyImage> value) {
    emit(state.copyWith(imageUrlList: value));
  }

  void toyAgeChanged(ToyAge value) {
    emit(state.copyWith(toyAge: value));
  }

  void toyGenderChanged(ToyGender value) {
    emit(state.copyWith(toyGender: value));
  }

  void toyConditionChanged(ToyCondition value) {
    emit(state.copyWith(toyCondition: value));
  }
}
