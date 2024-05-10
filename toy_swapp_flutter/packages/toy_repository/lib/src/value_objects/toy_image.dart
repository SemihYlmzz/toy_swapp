import 'dart:typed_data';

import 'package:formz/formz.dart';

enum ToyImageObjectError { empty, imageSizeTooBig }

class ToyImage extends FormzInput<
    ({
      Uint8List toyImage128,
      Uint8List toyImage256,
      Uint8List toyImage512,
      Uint8List toyImage1024,
    }),
    ToyImageObjectError> {
  ToyImage.pure()
      : super.pure(
          (
            toyImage128: Uint8List(0),
            toyImage256: Uint8List(0),
            toyImage512: Uint8List(0),
            toyImage1024: Uint8List(0),
          ),
        );

  const ToyImage.dirty({
    required Uint8List toyImage128,
    required Uint8List toyImage256,
    required Uint8List toyImage512,
    required Uint8List toyImage1024,
  }) : super.dirty(
          (
            toyImage128: toyImage128,
            toyImage256: toyImage256,
            toyImage512: toyImage512,
            toyImage1024: toyImage1024,
          ),
        );

  @override
  ToyImageObjectError? validator(
    ({
      Uint8List toyImage128,
      Uint8List toyImage256,
      Uint8List toyImage512,
      Uint8List toyImage1024,
    })? value,
  ) {
    if (value == null) {
      return ToyImageObjectError.empty;
    }
    if (value.toyImage128.lengthInBytes > 128 * 128) {
      return ToyImageObjectError.imageSizeTooBig;
    }
    if (value.toyImage256.lengthInBytes > 256 * 256) {
      return ToyImageObjectError.imageSizeTooBig;
    }
    if (value.toyImage512.lengthInBytes > 512 * 512) {
      return ToyImageObjectError.imageSizeTooBig;
    }
    if (value.toyImage1024.lengthInBytes > 1024 * 1024) {
      return ToyImageObjectError.imageSizeTooBig;
    }

    return null;
  }
}
