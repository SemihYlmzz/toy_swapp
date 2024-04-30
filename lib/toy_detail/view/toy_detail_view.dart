import 'package:consumer_repository/consumer_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_touch_ripple/flutter_touch_ripple.dart';
import 'package:shared_constants/shared_constants.dart';
import 'package:shared_widgets/shared_widgets.dart';
import 'package:toy_repository/toy_repository.dart';
import 'package:toy_swapp/app/app.dart';

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
    final isCurrentConsumerOwner = currentConsumer.authId == toy.ownerAuthId;

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
                child: Image.network(
                  toy.imageUrlList.first.url128,
                  width: MediaQuery.of(context).size.width,
                  height: 260,
                  fit: BoxFit.cover,
                ),
              ),
              SharedGap.gap4,
              Container(
                height: 60,
                padding: SharedPaddings.left8,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: toy.imageUrlList.length,
                  itemBuilder: (context, index) => Center(
                    child: Container(
                      width: 60,
                      height: 60,
                      margin: SharedPaddings.right12,
                      decoration: BoxDecoration(
                        borderRadius: SharedBorderRadius.circular4,
                        image: DecorationImage(
                          image: NetworkImage(
                            toy.imageUrlList[index].url128,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SharedGap.gap12,
              Row(
                children: [
                  SharedGap.gap20,
                  Expanded(
                    child: Text(
                      toy.name,
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                  ),
                ],
              ),
              SharedGap.gap12,
              Padding(
                padding: SharedPaddings.horizontal20,
                child: Text(
                  toy.description,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Theme.of(context)
                            .colorScheme
                            .onBackground
                            .withOpacity(0.6),
                      ),
                ),
              ),
              SharedGap.gap20,
              const ToyDetailsDividerText(),
              SizedBox(
                width: MediaQuery.sizeOf(context).width,
                child: Wrap(
                  spacing: 32,
                  runSpacing: 16,
                  alignment: WrapAlignment.center,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Min. Age',
                          style:
                              Theme.of(context).textTheme.labelSmall?.copyWith(
                                    color: Colors.pinkAccent,
                                  ),
                        ),
                        Text(
                          toy.details.age.toString(),
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'Mostly Used by',
                          style:
                              Theme.of(context).textTheme.labelSmall?.copyWith(
                                    color: Colors.pinkAccent,
                                  ),
                        ),
                        Text(
                          toy.details.gender.toString(),
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'Condition',
                          style:
                              Theme.of(context).textTheme.labelSmall?.copyWith(
                                    color: Colors.pinkAccent,
                                  ),
                        ),
                        Text(
                          toy.details.condition.toString(),
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SharedGap.gap20,
              Stack(
                alignment: Alignment.center,
                children: [
                  const Divider(thickness: 0.1),
                  Container(
                    color: Theme.of(context).colorScheme.background,
                    padding: SharedPaddings.all20,
                    child: Text(
                      'Owner Details',
                      style:
                          Theme.of(context).textTheme.headlineMedium?.copyWith(
                                color: Theme.of(context)
                                    .colorScheme
                                    .onBackground
                                    .withOpacity(0.4),
                              ),
                    ),
                  ),
                ],
              ),
              ConsumerCard(consumer: ownerConsumer),
              Padding(
                padding: SharedPaddings.horizontal20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${ownerConsumer.firstName} '
                      '${ownerConsumer.lastName}',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    SharedGap.gap16,
                    // Todo: same with toy card widget
                    const Row(
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
                  ],
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
                    onTap: () {},
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
