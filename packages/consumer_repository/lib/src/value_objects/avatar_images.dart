import 'dart:typed_data';

import 'package:formz/formz.dart';

enum AvatarImagesObjectError { empty, imageSizeTooBig }

class AvatarImages extends FormzInput<
    ({
      Uint8List avatarImage128,
      Uint8List avatarImage256,
      Uint8List avatarImage512,
      Uint8List avatarImage1024,
    })?,
    AvatarImagesObjectError> {
  const AvatarImages.pure() : super.pure(null);

  const AvatarImages.dirty({
    required Uint8List avatarImage128,
    required Uint8List avatarImage256,
    required Uint8List avatarImage512,
    required Uint8List avatarImage1024,
  }) : super.dirty(
          (
            avatarImage128: avatarImage128,
            avatarImage256: avatarImage256,
            avatarImage512: avatarImage512,
            avatarImage1024: avatarImage1024,
          ),
        );

  @override
  AvatarImagesObjectError? validator(
    ({
      Uint8List avatarImage1024,
      Uint8List avatarImage128,
      Uint8List avatarImage256,
      Uint8List avatarImage512
    })? value,
  ) {
    if (value == null) {
      return AvatarImagesObjectError.empty;
    }
    if (value.avatarImage1024.lengthInBytes > 1024 * 1024) {
      return AvatarImagesObjectError.imageSizeTooBig;
    }
    if (value.avatarImage512.lengthInBytes > 512 * 512) {
      return AvatarImagesObjectError.imageSizeTooBig;
    }
    if (value.avatarImage256.lengthInBytes > 256 * 256) {
      return AvatarImagesObjectError.imageSizeTooBig;
    }
    if (value.avatarImage128.lengthInBytes > 128 * 128) {
      return AvatarImagesObjectError.imageSizeTooBig;
    }

    return null;
  }
}
