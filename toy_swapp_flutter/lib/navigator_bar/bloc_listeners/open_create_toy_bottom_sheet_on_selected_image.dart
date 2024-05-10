import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../create_toy/create_toy.dart';
import '../navigator_bar.dart';

extension NavigatorBarOpenCreateToyBottomSheetOnImagesSelected
    on NavigatorBarBlocListeners {
  BlocListener<NavigatorBarCubit, NavigatorBarCubitState>
      openCreateToyBottomSheetOnImagesSelected() {
    return BlocListener(
      listener: (context, state) {
        final selectedImages = state.imageUrlList;

        if (selectedImages.isEmpty || !context.mounted) {
          return;
        }

        showModalBottomSheet<void>(
          context: context,
          isScrollControlled: true,
          isDismissible: false,
          useSafeArea: true,
          enableDrag: false,
          builder: (context) {
            return CreateToyScreen(
              imageList: state.imageUrlList,
            );
          },
        );
        context.read<NavigatorBarCubit>().clearSelectedImages();
      },
    );
  }
}
