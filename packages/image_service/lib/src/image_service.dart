import 'dart:typed_data';

import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:fpdart/fpdart.dart';
import 'package:image_picker/image_picker.dart';
import 'package:toy_swapp/errors/errors.dart';

import '../image_service.dart';

class ImageService {
  ImageService({
    ImagePicker? imagePicker,
  }) : _imagePicker = imagePicker ?? ImagePicker();

  final ImagePicker _imagePicker;

  FutureEither<Uint8List?> pickSingleImageFromPhotos() async {
    try {
      final pickedImage = await _imagePicker.pickImage(
        source: ImageSource.gallery,
      );
      if (pickedImage == null) {
        return const Right(null);
      }

      final pickedImageUint8list = await pickedImage.readAsBytes();
      return Right(pickedImageUint8list);
    } catch (exception) {
      return const Left(ImageServiceException.unknown());
    }
  }

  FutureEither<Uint8List?> pickSingleImageFromCamera() async {
    try {
      final pickedImage = await _imagePicker.pickImage(
        source: ImageSource.camera,
      );
      if (pickedImage == null) {
        return const Right(null);
      }

      final pickedImageUint8list = await pickedImage.readAsBytes();
      return Right(pickedImageUint8list);
    } catch (exception) {
      return const Left(ImageServiceException.unknown());
    }
  }

  FutureEither<Uint8List> compressImage(
    Uint8List image, {
    required int width,
    int? height,
  }) async {
    try {
      final compressedImage = await FlutterImageCompress.compressWithList(
        image,
        minHeight: height ?? width,
        minWidth: width,
        quality: 50,
      );
      return Right(compressedImage);
    } catch (exception) {
      return const Left(ImageServiceException.unknown());
    }
  }

  FutureEither<List<Uint8List>> pickMultiImagesFromPhotos() async {
    try {
      final pickedImages = await _imagePicker.pickMultiImage();
      if (pickedImages.isEmpty) {
        return const Right([]);
      }

      final pickedImagesUint8list = await Future.wait(
        pickedImages.map((pickedImage) => pickedImage.readAsBytes()),
      );
      return Right(pickedImagesUint8list);
    } catch (exception) {
      return const Left(ImageServiceException.unknown());
    }
  }
}
