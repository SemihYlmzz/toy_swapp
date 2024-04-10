import 'dart:typed_data';

import 'package:fpdart/fpdart.dart';
import 'package:image_picker/image_picker.dart';
import 'package:toy_swapp/errors/errors.dart';

import '../image_service.dart';

class ImageService {
   ImageService({
     ImagePicker? imagePicker,
  }) : _imagePicker = imagePicker ?? ImagePicker();

  final ImagePicker _imagePicker;

  FutureEither<Uint8List> pickSingleImageFromPhotos() async {
    try {
      final pickedImage = await _imagePicker.pickImage(
        source: ImageSource.gallery,
      );
      if (pickedImage == null) {
        return const Left(ImageServiceException.userCanceled());
      }

      final pickedImageUint8list = await pickedImage.readAsBytes();
      return Right(pickedImageUint8list);
    } catch (exception) {
      return const Left(ImageServiceException.unknown());
    }
  }

  FutureEither<Uint8List> pickSingleImageFromCamera() async {
    try {
      final pickedImage = await _imagePicker.pickImage(
        source: ImageSource.camera,
      );
      if (pickedImage == null) {
        return const Left(ImageServiceException.userCanceled());
      }

      final pickedImageUint8list = await pickedImage.readAsBytes();
      return Right(pickedImageUint8list);
    } catch (exception) {
      return const Left(ImageServiceException.unknown());
    }
  }
}
