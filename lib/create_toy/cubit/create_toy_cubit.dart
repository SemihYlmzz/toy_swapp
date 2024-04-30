import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:toy_repository/toy_repository.dart';
import 'package:toy_swapp/errors/errors.dart';

part 'create_toy_state.dart';
part 'create_toy_cubit.freezed.dart';

class CreateToyCubit extends Cubit<CreateToyCubitState> {
  CreateToyCubit({
    required List<ToyImage> imageUrlList,
  }) : super(
          CreateToyCubitState(
            imageUrlList: imageUrlList,
            enterValueState: CreateToyEnterValueState.name,
          ),
        );

  // Functions
  void toyNameChanged(String value) {
    final toyName = ToyName.dirty(toyName: value);
    emit(state.copyWith(toyName: toyName));
  }

  void toyDescriptionChanged(String value) {
    final toyDescription = ToyDescription.dirty(toyDescription: value);
    emit(state.copyWith(toyDescription: toyDescription));
  }

  void clearToyDescription() {
    emit(state.copyWith(toyDescription: const ToyDescription.pure()));
  }

  void imageUrlListChanged(List<ToyImage> value) {
    emit(state.copyWith(imageUrlList: value));
  }

  void toyAgeChanged(ToyAge value) {
    emit(state.copyWith(toyAge: value));
  }

  void clearToyAge() {
    emit(state.copyWith(toyAge: null));
  }

  void toyGenderChanged(ToyGender value) {
    emit(state.copyWith(toyGender: value));
  }

  void clearToyGender() {
    emit(state.copyWith(toyGender: null));
  }

  void toyConditionChanged(ToyCondition value) {
    emit(state.copyWith(toyCondition: value));
  }

  void clearToyCondition() {
    emit(state.copyWith(toyCondition: null));
  }

  void showObjectErrors() {
    emit(state.copyWith(displayObjectErrors: true));
  }

  void nextEnterValueState() {
    final newEnterValueState = switch (state.enterValueState) {
      CreateToyEnterValueState.name => CreateToyEnterValueState.description,
      CreateToyEnterValueState.description => CreateToyEnterValueState.age,
      CreateToyEnterValueState.age => CreateToyEnterValueState.gender,
      CreateToyEnterValueState.gender => CreateToyEnterValueState.condition,
      CreateToyEnterValueState.condition => CreateToyEnterValueState.done,
      CreateToyEnterValueState.done => CreateToyEnterValueState.done,
    };
    emit(
      state.copyWith(
        displayObjectErrors: false,
        enterValueState: newEnterValueState,
      ),
    );
  }

  void previousEnterValueState() {
    final newEnterValueState = switch (state.enterValueState) {
      CreateToyEnterValueState.name => CreateToyEnterValueState.name,
      CreateToyEnterValueState.description => CreateToyEnterValueState.name,
      CreateToyEnterValueState.age => CreateToyEnterValueState.description,
      CreateToyEnterValueState.gender => CreateToyEnterValueState.age,
      CreateToyEnterValueState.condition => CreateToyEnterValueState.gender,
      CreateToyEnterValueState.done => CreateToyEnterValueState.condition,
    };
    emit(
      state.copyWith(
        displayObjectErrors: false,
        enterValueState: newEnterValueState,
      ),
    );
  }
}
