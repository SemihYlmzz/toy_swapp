import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_service/image_service.dart';
import 'package:toy_repository/toy_repository.dart';
import 'package:toy_swapp/errors/errors.dart';

part 'create_toy_state.dart';
part 'create_toy_cubit.freezed.dart';

class CreateToyCubit extends Cubit<CreateToyCubitState> {
  CreateToyCubit({
    required ImageService imageService,
  })  : _imageService = imageService,
        super(const CreateToyCubitState());

  // Services
  final ImageService _imageService;

  // Functions
  void toyNameChanged(String value) {
    final toyName = ToyName.dirty(toyName: value);
    emit(state.copyWith(toyName: toyName));
  }

  void toyDescriptionChanged(String value) {
    final toyDescription = ToyDescription.dirty(toyDescription: value);
    emit(state.copyWith(toyDescription: toyDescription));
  }

  void imageUrlListChanged(List<ToyImage> value) {
    emit(state.copyWith(imageUrlList: value));
  }

  void toyAgeChanged(ToyAge value) {
    emit(state.copyWith(toyAge: value));
  }

  void toyGenderChanged(ToyGender value) {
    emit(state.copyWith(toyGender: value));
  }

  void toyConditionChanged(ToyCondition value) {
    emit(state.copyWith(toyCondition: value));
  }

  Future<void> selectMultipleImages() async {
    final tryPick = await _imageService.pickMultiImagesFromPhotos();
    final imagesOrNull = tryPick.getRight().toNullable();
    if (imagesOrNull == null) {
      return;
    }
    for (final image in imagesOrNull) {
      final tryCompress1024 =
          await _imageService.compressImage(image, width: 1024);
      final tryCompress128 =
          await _imageService.compressImage(image, width: 128);
      final tryCompress256 =
          await _imageService.compressImage(image, width: 256);
      final tryCompress512 =
          await _imageService.compressImage(image, width: 512);

      final tryCompress1024Result = tryCompress1024.getRight().toNullable();
      final tryCompress128Result = tryCompress128.getRight().toNullable();
      final tryCompress256Result = tryCompress256.getRight().toNullable();
      final tryCompress512Result = tryCompress512.getRight().toNullable();
      if (tryCompress1024Result == null ||
          tryCompress128Result == null ||
          tryCompress256Result == null ||
          tryCompress512Result == null) {
        return;
      }

      final newImageUrlList = state.imageUrlList +
          [
            ToyImage.dirty(
              toyImage128: tryCompress128Result,
              toyImage256: tryCompress256Result,
              toyImage512: tryCompress512Result,
              toyImage1024: tryCompress1024Result,
            ),
          ];
      emit(state.copyWith(imageUrlList: newImageUrlList));
    }
  }
}
