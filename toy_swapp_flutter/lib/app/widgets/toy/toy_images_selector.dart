import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:fpdart/fpdart.dart';
import 'package:shared_constants/shared_constants.dart';

class ToyImagesSelector extends StatelessWidget {
  const ToyImagesSelector({
    required this.toyImagesList,
    required this.selectedImageIndex,
    required this.selectedImageIndexChanged,
    super.key,
  });
  final Either<List<String>, List<Uint8List>> toyImagesList;
  final int selectedImageIndex;
  final void Function(int) selectedImageIndexChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75 + 8,
      child: ListView.builder(
        cacheExtent: 75 * 10 + 8 * 10,
        scrollDirection: Axis.horizontal,
        itemCount: toyImagesList.fold(
          (urls) => urls.length,
          (memoryImages) => memoryImages.length,
        ),
        itemBuilder: (context, index) {
          return Animate(
            effects: [
              FadeEffect(
                delay: SharedDurations.ms370 + SharedDurations.ms200 * index,
              ),
            ],
            child: Padding(
              padding: SharedPaddings.all8,
              child: GestureDetector(
                onTap: () {
                  selectedImageIndexChanged(index);
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
                      color: selectedImageIndex == index
                          ? Theme.of(context).colorScheme.primary
                          : Colors.transparent,
                    ),
                    borderRadius: SharedBorderRadius.circular16,
                    image: DecorationImage(
                      image: toyImagesList.fold(
                        (urls) => NetworkImage(urls[index]),
                        (memoryImages) => MemoryImage(memoryImages[index]),
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
    );
  }
}
