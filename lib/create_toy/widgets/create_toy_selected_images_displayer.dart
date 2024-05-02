import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:toy_swapp/app/app.dart';

import '../create_toy.dart';

class ToyCreateSelectedImagesDisplayer extends StatelessWidget {
  const ToyCreateSelectedImagesDisplayer({super.key});

  @override
  Widget build(BuildContext context) {
    final cubitState = context.watch<CreateToyCubit>().state;
    final selectedImageUrls =
        cubitState.imageUrlList[cubitState.selectedImageIndex].value;
    return Animate(
      effects: const [
        MoveEffect(),
        FadeEffect(),
      ],
      child: Column(
        children: [
          ToyImageDisplayer(
            toyImage128: Right(selectedImageUrls.toyImage128),
          ),
          ToyImagesSelector(
            selectedImageIndex: cubitState.selectedImageIndex,
            selectedImageIndexChanged:
                context.read<CreateToyCubit>().changeSelectedImageIndex,
            toyImagesList: Right(
              cubitState.imageUrlList.map((e) => e.value.toyImage128).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
