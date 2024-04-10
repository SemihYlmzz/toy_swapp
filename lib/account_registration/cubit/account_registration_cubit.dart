import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_service/image_service.dart';
import 'package:permission_service/permission_service.dart';

part 'account_registration_cubit_state.dart';
part 'account_registration_cubit.freezed.dart';

class AccountRegistrationCubit extends Cubit<AccountRegistrationCubitState> {
  AccountRegistrationCubit({
    required PermissionService permissionService,
    required ImageService imageService,
  })  : _permissionService = permissionService,
        _imageService = imageService,
        super(const AccountRegistrationCubitState());

  // Services
  final PermissionService _permissionService;
  final ImageService _imageService;

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
    trySelect.fold(
      (failure) => null,
      (uint8List) => emit(state.copyWith(avatarImage: uint8List)),
    );
  }
}
