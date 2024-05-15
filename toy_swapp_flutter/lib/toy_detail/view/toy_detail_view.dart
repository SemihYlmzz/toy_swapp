import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_touch_ripple/flutter_touch_ripple.dart';
import 'package:fpdart/fpdart.dart';
import 'package:shared_constants/shared_constants.dart';
import 'package:shared_widgets/shared_widgets.dart';
import 'package:toy_swapp/app/app.dart';
import 'package:toy_swapp_client/toy_swapp_client.dart';

import '../toy_detail.dart';

class ToyDetailView extends StatelessWidget {
  const ToyDetailView({
    required this.currentConsumer,
    required this.toy,
    required this.ownerConsumer,
    required this.heroTag,
    super.key,
  });
  final Consumer currentConsumer;
  final Toy toy;
  final Consumer ownerConsumer;
  final String heroTag;

  @override
  Widget build(BuildContext context) {
    final isCurrentConsumerOwner = currentConsumer.id == toy.ownerConsumerID;

    return BaseScaffold(
      safeArea: true,
      body: Stack(
        children: [
          BaseColumn(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Hero(
                tag: heroTag,
                child: ToyImageDisplayer(
                  toyImage128: Left(toy.imageUrlList.first.url128),
                ),
              ),
              SharedGap.gap4,
              ToyImagesSelector(
                toyImagesList: Left(
                  toy.imageUrlList.map((e) => e.url128).toList(),
                ),
                selectedImageIndex: 0,
                selectedImageIndexChanged: (i) {},
              ),
              SharedGap.gap12,
              ToyNameDisplayer(toyName: toy.name),
              SharedGap.gap12,
              Padding(
                padding: SharedPaddings.horizontal20,
                child: Text(
                  toy.description,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Theme.of(context)
                            .colorScheme
                            .onSurface
                            .withOpacity(0.6),
                      ),
                ),
              ),
              SharedGap.gap20,
              ToyDetailsDisplayer(
                toyAge: toy.age,
                toyGender: toy.gender,
                toyCondition: toy.condition,
              ),
              SharedGap.gap20,
              Stack(
                alignment: Alignment.center,
                children: [
                  const Divider(thickness: 0.1),
                  Container(
                    color: Theme.of(context).colorScheme.surface,
                    padding: SharedPaddings.horizontal20,
                    child: ConsumerAvatarDisplayer(consumer: ownerConsumer),
                  ),
                ],
              ),
              SharedGap.gap12,
              Center(
                child: Text(
                  '${ownerConsumer.firstName} '
                  '${ownerConsumer.lastName}',
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),
              ),
              SharedGap.gap12,
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.location_on,
                    color: Colors.pinkAccent,
                  ),
                  Text(
                    '300 Meters',
                    style: TextStyle(
                      color: Colors.white54,
                    ),
                  ),
                ],
              ),
              SharedGap.gap12,
              Center(
                child: SizedBox(
                  width: 320,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ConsumerCounterDisplayer(
                        counterName: 'Toys',
                        counterValue: ownerConsumer.toyCount,
                      ),
                      ConsumerCounterDisplayer(
                        counterName: 'Switched',
                        counterValue: ownerConsumer.swapCount,
                      ),
                      ConsumerCounterDisplayer(
                        counterName: 'Chance',
                        counterValue: ownerConsumer.switchChanceCount,
                      ),
                    ],
                  ),
                ),
              ),
              SharedGap.gap128,
            ],
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Animate(
              effects: const [
                FadeEffect(
                  delay: SharedDurations.ms370,
                ),
              ],
              child: GestureDetector(
                onTap: () {
                  Navigator.maybePop(context);
                },
                child: Container(
                  width: 50,
                  height: 50,
                  margin: SharedPaddings.all20,
                  decoration: const BoxDecoration(
                    color: Colors.black54,
                    shape: BoxShape.circle,
                  ),
                  child: const Center(
                    child: Icon(Icons.close_rounded),
                  ),
                ),
              ),
            ),
          ),
          if (!isCurrentConsumerOwner)
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                height: 70,
                width: 70,
                margin: SharedPaddings.all16,
                decoration: BoxDecoration(
                  color: Colors.white12,
                  border: Border.all(
                    color: Colors.pinkAccent,
                  ),
                  borderRadius: SharedBorderRadius.circular8,
                ),
                child: const Center(
                  child: Icon(Icons.favorite_outline, size: 32),
                ),
              ),
            ),
          if (!isCurrentConsumerOwner)
            Align(
              alignment: Alignment.topRight,
              child: Animate(
                effects: const [
                  FadeEffect(
                    delay: SharedDurations.ms370,
                  ),
                ],
                child: Container(
                  width: 50,
                  height: 50,
                  margin: SharedPaddings.all20,
                  decoration: BoxDecoration(
                    color: Colors.redAccent.withOpacity(0.4),
                    shape: BoxShape.circle,
                  ),
                  child: TouchRipple<void>(
                    onTap: () {},
                    borderRadius: SharedBorderRadius.circular32,
                    child: const Center(
                      child: Icon(Icons.priority_high),
                    ),
                  ),
                ),
              ),
            )
          else
            Align(
              alignment: Alignment.topRight,
              child: Animate(
                effects: const [
                  FadeEffect(
                    delay: SharedDurations.ms370,
                  ),
                ],
                child: Container(
                  width: 50,
                  height: 50,
                  margin: SharedPaddings.all20,
                  decoration: BoxDecoration(
                    color: Colors.redAccent.withOpacity(0.4),
                    shape: BoxShape.circle,
                  ),
                  child: TouchRipple<void>(
                    onTap: () async {
                      final isDelete = await showDialog<bool>(
                        context: context,
                        builder: (context) {
                          return const DeleteOwnedToyPopUp();
                        },
                      );
                      if (isDelete == null) {
                        return;
                      }
                      if (!isDelete) {
                        return;
                      }
                      if (!context.mounted) {
                        return;
                      }
                      context.read<ToyDetailBloc>().add(
                            ToyDetailEvent.deleteOwnedToy(toyID: toy.id!),
                          );
                    },
                    borderRadius: SharedBorderRadius.circular32,
                    child: const Center(
                      child: Icon(Icons.delete),
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
