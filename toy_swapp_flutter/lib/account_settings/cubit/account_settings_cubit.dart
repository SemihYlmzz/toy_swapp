import 'package:auth_repository/auth_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:consumer_repository/consumer_repository.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_service/image_service.dart';
import 'package:toy_swapp/account_settings/account_settings.dart';

import '../../errors/errors.dart';

part 'account_settings_cubit_state.dart';
part 'account_settings_cubit.freezed.dart';

class AccountSettingsCubit extends Cubit<AccountSettingsCubitState> {
  AccountSettingsCubit({
    required ImageService imageService,
  })  : _imageService = imageService,
        super(AccountSettingsCubitState(lastNameFocusNode: FocusNode()));
  // Services
  final ImageService _imageService;
  // Functions
  void updateViewState(AccountSettingsViewState viewState) {
    emit(state.copyWith(currentViewState: viewState));
  }

  void clearState() {
    emit(
      state.copyWith(
        newAvatarImages: null,
        currentPassword: const Password.pure(),
        firstNameObject: const FirstName.pure(),
        lastNameObject: const LastName.pure(),
        emailObject: const Email.pure(),
        isLoading: false,
        failure: null,
        confirmedPassword: const ConfirmedPassword.pure(),
        newPassword: const Password.pure(),
      ),
    );
  }

  void updatePassword(String updatedPasswordValue) {
    final updatedPassword = Password.dirty(value: updatedPasswordValue);
    emit(state.copyWith(currentPassword: updatedPassword));
  }

  void updateNewPassword(String updatedNewPasswordValue) {
    final updatedNewPassword = Password.dirty(value: updatedNewPasswordValue);
    emit(
      state.copyWith(
        newPassword: updatedNewPassword,
        confirmedPassword: ConfirmedPassword.dirty(
          password: updatedNewPasswordValue,
          value: state.confirmedPassword.value,
        ),
      ),
    );
  }

  void updateNewConfirmedPassword(String updateNewConfirmedPasswordValue) {
    final updateNewConfirmedPassword = ConfirmedPassword.dirty(
      value: updateNewConfirmedPasswordValue,
      password: state.newPassword.value,
    );
    emit(state.copyWith(confirmedPassword: updateNewConfirmedPassword));
  }

  void updateFirstName(String updatedFirstNameValue, String currentFirstName) {
    final updatedFirstName = FirstName.dirty(
      newFirstName: updatedFirstNameValue,
      currentFirstName: currentFirstName,
    );
    emit(state.copyWith(firstNameObject: updatedFirstName));
  }

  void updateLastName(String updatedLastNameValue, String currentLastName) {
    final updatedLastName = LastName.dirty(
      newLastName: updatedLastNameValue,
      currentLastName: currentLastName,
    );
    emit(state.copyWith(lastNameObject: updatedLastName));
  }

  void updateEmail(String updatedEmailValue) {
    final updatedEmail = Email.dirty(value: updatedEmailValue);
    emit(state.copyWith(emailObject: updatedEmail));
  }

  Future<void> selectAvatarImageFromPhotos() async {
    emit(state.copyWith(isLoading: true));
    // Select Image and Ensure Valued
    final tryPick = await _imageService.pickSingleImageFromPhotos();
    final nullableImage = tryPick.getRight().toNullable();
    if (nullableImage == null) {
      emit(state.copyWith(isLoading: false));
      return;
    }
    // Compress Selected Image
    final tryCompress1024 =
        await _imageService.compressImage(nullableImage, width: 1024);
    final tryCompress128 =
        await _imageService.compressImage(nullableImage, width: 128);
    final tryCompress256 =
        await _imageService.compressImage(nullableImage, width: 256);
    final tryCompress512 =
        await _imageService.compressImage(nullableImage, width: 512);
    // Get Compressed Values
    final nullableImage1024 = tryCompress1024.getRight().toNullable();
    final nullableImage128 = tryCompress128.getRight().toNullable();
    final nullableImage256 = tryCompress256.getRight().toNullable();
    final nullableImage512 = tryCompress512.getRight().toNullable();

    if (nullableImage1024 == null ||
        nullableImage128 == null ||
        nullableImage256 == null ||
        nullableImage512 == null) {
      emit(state.copyWith(isLoading: false));
      return;
    }
    emit(
      state.copyWith(
        newAvatarImages: AvatarImages.dirty(
          avatarImage128: nullableImage128,
          avatarImage256: nullableImage256,
          avatarImage512: nullableImage512,
          avatarImage1024: nullableImage1024,
        ),
        isLoading: false,
      ),
    );
  }
}
