import 'package:auth_repository/auth_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'forgot_password_cubit_state.dart';
part 'forgot_password_cubit.freezed.dart';

class ForgotPasswordCubit extends Cubit<ForgotPasswordCubitState> {
  ForgotPasswordCubit() : super(const ForgotPasswordCubitState());

  void updateEmail(String email) {
    emit(state.copyWith(email: Email.dirty(value: email)));
  }

  void displayErrors() {
    emit(state.copyWith(displayErrors: true));
  }
}
