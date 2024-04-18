import 'dart:typed_data';

import 'package:auth_repository/auth_repository.dart';
import 'package:bloc/bloc.dart';
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
        super(const AccountSettingsCubitState());
  // Services
  final ImageService _imageService;
  // Functions
  void updateViewState(AccountSettingsViewState viewState) {
    emit(state.copyWith(currentViewState: viewState));
  }

  void clearState() {
    emit(
      state.copyWith(
        selectedAvatar: null,
        currentPassword: const Password.pure(),
      ),
    );
  }

  void updatePassword(String updatedPasswordValue) {
    final updatedPassword = Password.dirty(value: updatedPasswordValue);
    emit(state.copyWith(currentPassword: updatedPassword));
  }

  Future<void> selectAvatarImageFromPhotos() async {
    final tryPick = await _imageService.pickSingleImageFromPhotos();
    final nullableImage = tryPick.getRight().toNullable();
    if (nullableImage == null) {
      return;
    }
    emit(state.copyWith(selectedAvatar: nullableImage));
  }
}
