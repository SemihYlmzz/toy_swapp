import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_service/image_service.dart';
import 'package:location_service/location_service.dart';
import 'package:permission_service/permission_service.dart';

part 'account_registration_cubit_state.dart';
part 'account_registration_cubit.freezed.dart';

class AccountRegistrationCubit extends Cubit<AccountRegistrationCubitState> {
  AccountRegistrationCubit({
    required PermissionService permissionService,
    required ImageService imageService,
    required LocationService locationService,
  })  : _permissionService = permissionService,
        _imageService = imageService,
        _locationService = locationService,
        super(const AccountRegistrationCubitState());

  // Services
  final PermissionService _permissionService;
  final ImageService _imageService;
  final LocationService _locationService;

  // Functions
  void updateFirstName(String firstName) {
    emit(state.copyWith(firstName: firstName));
  }

  void updateLastName(String lastName) {
    emit(state.copyWith(lastName: lastName));
  }

  Future<void> updateAvatarFromPhotos() async {
    final tryRequest = await _permissionService.requestPhotos();
    final hasPermission = tryRequest.getOrElse((l) => false);
    if (!hasPermission) {
      return;
    }
    final trySelect = await _imageService.pickSingleImageFromPhotos();
    final selectFailure = trySelect.getLeft().toNullable();
    if (selectFailure != null) {
      return emit(state.copyWith(errorMessage: selectFailure.toString()));
    }
    final selectedImage = trySelect.getOrElse((l) => null);
    if (selectedImage == null) {
      return;
    }
    final tryCompress1024 =
        await _imageService.compressImage(selectedImage, width: 1024);
    final tryCompress128 =
        await _imageService.compressImage(selectedImage, width: 128);
    final tryCompress256 =
        await _imageService.compressImage(selectedImage, width: 256);
    final tryCompress512 =
        await _imageService.compressImage(selectedImage, width: 512);

    final avatar1024 = tryCompress1024.getRight().toNullable();
    final avatar128 = tryCompress128.getRight().toNullable();
    final avatar256 = tryCompress256.getRight().toNullable();
    final avatar512 = tryCompress512.getRight().toNullable();

    emit(
      state.copyWith(
        avatar1024: avatar1024,
        avatar128: avatar128,
        avatar256: avatar256,
        avatar512: avatar512,
      ),
    );
  }

  Future<void> updateLocation() async {
    final tryRequest = await _permissionService.requestLocation();
    final hasPermission = tryRequest.getOrElse((l) => false);
    if (!hasPermission) {
      return;
    }
    final trySelect = await _locationService.getCurrentLocation();
    trySelect.fold(
      (failure) => null,
      (location) => emit(state.copyWith(location: location)),
    );
  }
}
