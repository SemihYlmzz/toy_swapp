import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_registration_cubit_state.dart';
part 'account_registration_cubit.freezed.dart';

class AccountRegistrationCubit extends Cubit<AccountRegistrationCubitState> {
  AccountRegistrationCubit() : super(const AccountRegistrationCubitState());

  void updateFirstName(String firstName) {
    emit(state.copyWith(firstName: firstName));
  }

  void updateLastName(String lastName) {
    emit(state.copyWith(lastName: lastName));
  }

  void selectImageAndSetAsAvatar(Uint8List avatarImage) {
    emit(state.copyWith(avatarImage: avatarImage));
  }

}
