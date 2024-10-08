import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_constants/shared_constants.dart';
import 'package:toy_swapp_client/toy_swapp_client.dart';

import '../../app/app.dart';
import '../../toy_detail/toy_detail.dart';
import '../profile.dart';

class ControlOwnedToyCard extends StatelessWidget {
  const ControlOwnedToyCard({
    required this.ownedToy,
    super.key,
  });
  final Toy ownedToy;
  @override
  Widget build(BuildContext context) {
    final toyGradient = switch (ownedToy.gender) {
      ToyGender.boy => AppColors.boyToyGradient,
      ToyGender.girl => AppColors.girlToyGradient,
      ToyGender.unisex => AppColors.unisexToyGradient,
    };
    final toyColor = switch (ownedToy.gender) {
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: SharedBorderRadius.circular12,
            child: GestureDetector(
              onTap: () {
                ToyDetailRouter.instance.push(
                  context,
                  ToyDetailScreenRequirements(
                    toy: ownedToy,
                    ownerConsumer: null,
                    heroTag: 'ControlOwnedToyCard${ownedToy.id}',
                  ),
                );
              },
              child: Hero(
                tag: 'ControlOwnedToyCard${ownedToy.id}',
                child: Image.network(
                  ownedToy.imageUrlList.first.url512,
                  width: double.infinity,
                  height: 126,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          if (ownedToy.isAccepted == null)
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.hourglass_top_sharp,
                  color: Colors.white54,
                ),
                Text('In Review'),
              ],
            )
          else if (ownedToy.isLocked)
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.lock,
                  color: Colors.white54,
                ),
                Text('Locked'),
              ],
            )
          else
            Padding(
              padding: SharedPaddings.horizontal4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // if (ownedToy.safeToPublicMarkerSupportId == null)
                  //   const SizedBox()
                  // else if (ownedToy.isLocked)
                  //   const Icon(
                  //     Icons.public,
                  //     color: Colors.green,
                  //   )
                  // else
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
                        ownedToy.likeCount.toString(),
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ],
                  ),
                  Flexible(
                    child: Switch.adaptive(
                      activeColor: toyColor,
                      inactiveTrackColor: Colors.white12,
                      thumbIcon: WidgetStateProperty.all(
                        Icon(
                          Icons.check,
                          color: toyColor,
                        ),
                      ),
                      value: ownedToy.isPublic,
                      onChanged: (value) {
                        if (value) {
                          context.read<ProfileBloc>().add(
                                ProfileEvent.openToyToPublic(
                                  toyID: ownedToy.id!,
                                ),
                              );
                          return;
                        } else {
                          context.read<ProfileBloc>().add(
                                ProfileEvent.closeToyToPublic(
                                  toyID: ownedToy.id!,
                                ),
                              );
                          return;
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          const SizedBox.shrink(),
        ],
      ),
    );
  }
}
