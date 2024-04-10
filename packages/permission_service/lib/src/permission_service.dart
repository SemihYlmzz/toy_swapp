import 'dart:async';

import 'package:flutter/services.dart';
import 'package:fpdart/fpdart.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:toy_swapp/errors/errors.dart';

import '../permission_service.dart';

class PermissionService {
  PermissionService({
    required this.androidVersionSdkNumber,
  }) {
    permissionsStatusStream.listen((event) {
      permissionsStatus = event;
    });
  }
  final int? androidVersionSdkNumber;
  // Manipulate Data
  final _streamController = StreamController<PermissionsStatus>.broadcast();

  Stream<PermissionsStatus> get permissionsStatusStream =>
      _streamController.stream;

  PermissionsStatus? permissionsStatus;

  // Functions
  Future<PermissionService> initPermissions() async {
    final camera = _permissionStatusToState(await Permission.camera.status);
    final location = _permissionStatusToState(await Permission.location.status);
    final photos = _permissionStatusToState(await Permission.photos.status);
    final storage = _permissionStatusToState(await Permission.storage.status);

    final initPermissionsStatus = PermissionsStatus(
      camera: camera,
      location: location,
      photos: photos,
      storage: storage,
    );
    _streamController.sink.add(initPermissionsStatus);
    return this;
  }

  FutureEither<bool> requestPhotos() async {
    try {
      if (permissionsStatus == null) {
        return const Left(PermissionServiceException.unknown());
      }
      if (androidVersionSdkNumber != null && androidVersionSdkNumber! <= 32) {
        return requestStorage();
      }

      final status = await Permission.photos.request();
      final updatedPermissions = permissionsStatus!.copyWith(
        photos: _permissionStatusToState(status),
      );
      _streamController.sink.add(updatedPermissions);
      return Right(_isPermissionGranted(updatedPermissions.photos));
    } catch (exception) {
      // Multiple Request Same Time
      if (exception is PlatformException) {
        if (exception.code == 'ERROR_ALREADY_REQUESTING_PERMISSIONS') {
          return const Left(PermissionServiceException.inProgress());
        }
      }

      return const Left(PermissionServiceException.inProgress());
    }
  }

  FutureEither<bool> requestStorage() async {
    try {
      if (permissionsStatus == null) {
        return const Left(PermissionServiceException.unknown());
      }
      final status = await Permission.storage.request();
      final updatedPermissions = permissionsStatus!.copyWith(
        storage: _permissionStatusToState(status),
      );
      _streamController.sink.add(updatedPermissions);
      return Right(_isPermissionGranted(updatedPermissions.storage));
    } catch (exception) {
      if (exception is PlatformException) {
        if (exception.code == 'ERROR_ALREADY_REQUESTING_PERMISSIONS') {
          return const Left(PermissionServiceException.inProgress());
        }
      }
      return const Left(PermissionServiceException.unknown());
    }
  }

  // Special Functions
  PermissionState _permissionStatusToState(PermissionStatus status) {
    return switch (status) {
      PermissionStatus.denied => PermissionState.requestable,
      PermissionStatus.granted => PermissionState.granted,
      PermissionStatus.limited => PermissionState.granted,
      PermissionStatus.permanentlyDenied => PermissionState.permanentlyDenied,
      PermissionStatus.provisional => PermissionState.granted,
      PermissionStatus.restricted => PermissionState.permanentlyDenied,
    };
  }

  bool _isPermissionGranted(PermissionState state) {
    return switch (state) {
      PermissionState.granted => true,
      _ => false,
    };
  }
}
