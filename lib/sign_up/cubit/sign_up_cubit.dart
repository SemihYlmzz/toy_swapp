import 'package:auth_repository/auth_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_cubit_state.dart';
part 'sign_up_cubit.freezed.dart';

class SignUpCubit extends Cubit<SignUpCubitState> {
  SignUpCubit() : super(const SignUpCubitState());

  void updateEmail(String email) {
    emit(state.copyWith(email: Email.dirty(value: email)));
  }

  void updatePassword(String password) {
    emit(
      state.copyWith(
        password: Password.dirty(value: password),
        confirmedPassword: ConfirmedPassword.dirty(
          password: password,
          value: state.confirmedPassword.value,
        ),
      ),
    );
  }

  void updateConfirmPassword(String confirmedPassword) {
    emit(
      state.copyWith(
        confirmedPassword: ConfirmedPassword.dirty(
          password: state.password.value,
          value: confirmedPassword,
        ),
      ),
    );
  }

  void displayErrors() {
    emit(state.copyWith(displayErrors: true));
  }
}
