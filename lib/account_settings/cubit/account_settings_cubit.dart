import 'package:auth_repository/auth_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:consumer_repository/consumer_repository.dart';
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
        newAvatarImages: null,
        currentPassword: const Password.pure(),
      ),
    );
  }

  void updatePassword(String updatedPasswordValue) {
    final updatedPassword = Password.dirty(value: updatedPasswordValue);
    emit(state.copyWith(currentPassword: updatedPassword));
  }

  Future<void> selectAvatarImageFromPhotos() async {
    // Select Image and Ensure Valued
    final tryPick = await _imageService.pickSingleImageFromPhotos();
    final nullableImage = tryPick.getRight().toNullable();
    if (nullableImage == null) {
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
      ),
    );
  }
}
