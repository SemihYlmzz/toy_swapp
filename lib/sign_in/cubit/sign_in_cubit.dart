import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_cubit_state.dart';
part 'sign_in_cubit.freezed.dart';

class SignInCubit extends Cubit<SignInCubitState> {
  SignInCubit() : super(const SignInCubitState());

  void updateEmail(String email) {
    emit(state.copyWith(email: email));
  }

  void updatePassword(String password) {
    emit(state.copyWith(password: password));
  }
}
