import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:pinch_to_zoom_scrollable/pinch_to_zoom_scrollable.dart';

class ToyImageDisplayer extends StatelessWidget {
  const ToyImageDisplayer({
    required this.toyImage128,
    super.key,
  });

  final Either<String, Uint8List> toyImage128;
  @override
  Widget build(BuildContext context) {
    const imageHeight = 260.0;
    const imageBoxFit = BoxFit.cover;
    final imageWidth = MediaQuery.sizeOf(context).width;
    return PinchToZoomScrollableWidget(
      maxScale: 6,
      child: toyImage128.fold(
        (networkImageUrl) => Image.network(
          networkImageUrl,
          width: imageWidth,
          height: imageHeight,
          fit: imageBoxFit,
        ),
        (memoryImage) => Image.memory(
          memoryImage,
          width: imageWidth,
          height: imageHeight,
          fit: imageBoxFit,
        ),
      ),
    );
  }
}
