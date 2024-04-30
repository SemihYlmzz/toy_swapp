import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pinch_to_zoom_scrollable/pinch_to_zoom_scrollable.dart';
import 'package:shared_constants/shared_constants.dart';

import '../create_toy.dart';

class ToyCreateSelectedImagesDisplayer extends StatelessWidget {
  const ToyCreateSelectedImagesDisplayer({super.key});

  @override
  Widget build(BuildContext context) {
    final cubitState = context.watch<CreateToyCubit>().state;
    return Animate(
      effects: const [
        MoveEffect(),
        FadeEffect(),
      ],
      child: Column(
        children: [
          PinchToZoomScrollableWidget(
            maxScale: 6,
            child: Image.memory(
              cubitState.imageUrlList[cubitState.selectedImageIndex].value
                  .toyImage512,
              fit: BoxFit.cover,
              height: 260,
              width: MediaQuery.of(context).size.width,
            ),
          ),
          SizedBox(
            height: 75 + 8,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: cubitState.imageUrlList.length,
              itemBuilder: (context, index) {
                final imageUrl = cubitState.imageUrlList[index];
                return Animate(
                  effects: [
                    FadeEffect(
                      delay:
                          SharedDurations.ms370 + SharedDurations.ms200 * index,
                    ),
                  ],
                  child: Padding(
                    padding: SharedPaddings.all8,
                    child: GestureDetector(
                      onTap: () {
                        context
                            .read<CreateToyCubit>()
                            .changeSelectedImageIndex(index);
                      },
                      child: AnimatedContainer(
                        duration: SharedDurations.ms200,
                        width: 75,
                        height: 75,
                        padding: SharedPaddings.all4,
                        decoration: BoxDecoration(
                          border: Border.all(
                            strokeAlign: BorderSide.strokeAlignOutside,
                            width: 2,
                            color: cubitState.selectedImageIndex == index
                                ? Theme.of(context).colorScheme.primary
                                : Colors.transparent,
                          ),
                          borderRadius: SharedBorderRadius.circular16,
                          image: DecorationImage(
                            image: MemoryImage(
                              imageUrl.value.toyImage128,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
