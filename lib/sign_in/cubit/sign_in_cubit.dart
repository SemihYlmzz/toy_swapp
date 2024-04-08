import 'package:auth_repository/auth_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_cubit_state.dart';
part 'sign_in_cubit.freezed.dart';

class SignInCubit extends Cubit<SignInCubitState> {
  SignInCubit() : super(const SignInCubitState());

  void updateEmail(String email) {
    emit(state.copyWith(email: Email.dirty(value: email)));
  }

  void updatePassword(String password) {
    emit(state.copyWith(password: Password.dirty(value: password)));
  }

  void displayErrors() {
    emit(state.copyWith(displayErrors: true));
  }
}
