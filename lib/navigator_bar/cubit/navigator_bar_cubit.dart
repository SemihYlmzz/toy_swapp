import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:image_service/image_service.dart';
import 'package:toy_repository/toy_repository.dart';

import '../../errors/errors.dart';
import '../navigator_bar.dart';

part 'navigator_bar_cubit_state.dart';
part 'navigator_bar_cubit.freezed.dart';

class NavigatorBarCubit extends Cubit<NavigatorBarCubitState> {
  NavigatorBarCubit({
    required GoRouterState goRouterState,
    required List<NavigatorBarSubGoRoute> subRoutes,
    required ImageService imageService,
  })  : _imageService = imageService,
        super(
          NavigatorBarCubitState(
            goRouterState: goRouterState,
            subRoutes: subRoutes,
          ),
        );
  // Services
  final ImageService _imageService;

  void updateGoRouterState(GoRouterState goRouterState) {
    final subRoute = state.subRoutes
        .where((element) => element.name == goRouterState.topRoute!.name)
        .firstOrNull;
    if (subRoute == null) {
      return;
    }
    emit(
      state.copyWith(goRouterState: goRouterState, selectedSubRoute: subRoute),
    );
  }

  Future<void> selectMultipleImages() async {
    final tryPick = await _imageService.pickMultiImagesFromPhotos(
      minImages: 2,
    );
    List<Uint8List>? selectedToyImages;
    tryPick.fold(
      (failure) => emit(state.copyWith(failure: failure, isLoading: false)),
      (toyImages) => selectedToyImages = toyImages,
    );
    if (selectedToyImages == null) {
      emit(state.copyWith(failure: null));
      return;
    }

    var newImageUrlList = <ToyImage>[];
    for (final image in selectedToyImages!) {
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

      newImageUrlList = newImageUrlList +
          [
            ToyImage.dirty(
              toyImage128: tryCompress128Result,
              toyImage256: tryCompress256Result,
              toyImage512: tryCompress512Result,
              toyImage1024: tryCompress1024Result,
            ),
          ];
    }
    emit(
      state.copyWith(
        imageUrlList: newImageUrlList,
        isLoading: false,
        failure: null,
      ),
    );
  }

  void clearSelectedImages() {
    emit(state.copyWith(imageUrlList: []));
  }
}
