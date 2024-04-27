import 'package:flutter/material.dart';
import 'package:shared_constants/shared_constants.dart';
import 'package:toy_repository/toy_repository.dart';

import '../../app/app.dart';
import '../../toy_detail/toy_detail.dart';

class ControlOwnedToyCard extends StatelessWidget {
  const ControlOwnedToyCard({
    required this.ownedToy,
    super.key,
  });
  final Toy ownedToy;
  @override
  Widget build(BuildContext context) {
    final toyGradient = switch (ownedToy.details.gender) {
      ToyGender.boy => AppColors.boyToyGradient,
      ToyGender.girl => AppColors.girlToyGradient,
      ToyGender.unisex => AppColors.unisexToyGradient,
    };
    final toyColor = switch (ownedToy.details.gender) {
      ToyGender.boy => Colors.blueAccent,
      ToyGender.girl => Colors.pinkAccent,
      ToyGender.unisex => Colors.deepPurpleAccent,
    };

    return Container(
      decoration: BoxDecoration(
        borderRadius: SharedBorderRadius.circular12,
        color: Colors.white12,
        border: Border.all(
          color: Colors.white54,
        ),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: SharedBorderRadius.circular12,
            child: GestureDetector(
              onTap: () {
                ToyDetailRouter.instance.push(
                  context,
                  ToyDetailScreenRequirements(
                    imageSize: 1,
                    imageNumber: 1,
                    toyOwnerAuthId: ownedToy.ownerAuthId,
                  ),
                );
              },
              child: Image.network(
                ownedToy.imageUrlList.first.url512,
                width: 125,
                height: 125,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: SharedPaddings.horizontal4,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    ShaderMask(
                      blendMode: BlendMode.srcIn,
                      shaderCallback: (bounds) => toyGradient.createShader(
                        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                      ),
                      child: const Icon(
                        Icons.favorite,
                        size: 32,
                      ),
                    ),
                    Text(
                      ownedToy.likersConsumerIds.length.toString(),
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ],
                ),
                Flexible(
                  child: Switch.adaptive(
                    activeColor: toyColor,
                    inactiveTrackColor: Colors.white12,
                    thumbIcon: MaterialStateProperty.all(
                      Icon(
                        Icons.check,
                        color: toyColor,
                      ),
                    ),
                    value: ownedToy.isPublic,
                    onChanged: (value) {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
