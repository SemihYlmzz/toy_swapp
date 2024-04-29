import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
          Image.memory(
            cubitState.imageUrlList.first.value.toyImage128,
            fit: BoxFit.cover,
            height: 260,
            width: MediaQuery.of(context).size.width,
          ),
          SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: cubitState.imageUrlList.length,
              itemBuilder: (context, index) {
                final imageUrl = cubitState.imageUrlList[index];
                return Animate(
                  effects: [
                    FadeEffect(
                      delay:
                          SharedDurations.ms370 + SharedDurations.ms300 * index,
                    ),
                  ],
                  child: Padding(
                    padding: SharedPaddings.all8,
                    child: Image.memory(
                      imageUrl.value.toyImage128,
                      width: 75,
                      height: 75,
                      fit: BoxFit.cover,
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
