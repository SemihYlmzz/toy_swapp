import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pinch_to_zoom_scrollable/pinch_to_zoom_scrollable.dart';
import 'package:shared_constants/shared_constants.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:toy_swapp_client/toy_swapp_client.dart';

import '../../app/app.dart';
import '../../toy_detail/toy_detail.dart';
import '../toys.dart';

class ToyCard extends StatelessWidget {
  const ToyCard({
    required this.toyAndOwnerConsumer,
    super.key,
  });

  final ToyAndOwnerConsumer toyAndOwnerConsumer;

  @override
  Widget build(BuildContext context) {
    // final currentConsumer = context.read<ToysBloc>().state.currentConsumer;
    final ownerConsumer = toyAndOwnerConsumer.ownerConsumer;
    final toy = toyAndOwnerConsumer.toy;
    final contextTheme = Theme.of(context);

    final toyGradient = switch (toy.gender) {
      ToyGender.boy => AppColors.boyToyGradient,
      ToyGender.girl => AppColors.girlToyGradient,
      ToyGender.unisex => AppColors.unisexToyGradient,
    };
    final imageIndex = ValueNotifier(0);

    return Container(
      width: 320,
      height: 550,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white24,
        ),
        borderRadius: SharedBorderRadius.circular12,
      ),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white12,
              borderRadius: SharedBorderRadius.topLeftRight12,
            ),
            child: Padding(
              padding: SharedPaddings.all12,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 52,
                        height: 52,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.pink,
                          ),
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: NetworkImage(
                              ownerConsumer.avatarUrl128,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SharedGap.gap8,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 140,
                            child: Text(
                              '${ownerConsumer.firstName} '
                              '${ownerConsumer.lastName}',
                              style: contextTheme.textTheme.titleLarge,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          const Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Colors.pinkAccent,
                              ),
                              Text(
                                '300 Meters',
                                style: TextStyle(
                                  color: Colors.white30,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.more_horiz),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: PageView(
              allowImplicitScrolling: true,
              key: ValueKey(toy.id),
              onPageChanged: (index) {
                imageIndex.value = index;
              },
              children: [
                for (int index = 0; index < toy.imageUrlList.length; index++)
                  GestureDetector(
                    onTap: () {
                      ToyDetailRouter.instance.push(
                        context,
                        ToyDetailScreenRequirements(
                          toy: toy,
                          ownerConsumer: ownerConsumer,
                          heroTag: 'ToyCard${toy.id}$index',
                        ),
                      );
                    },
                    child: Hero(
                      tag: 'ToyCard${toy.id}$index',
                      child: PinchToZoomScrollableWidget(
                        maxScale: 4,
                        rootOverlay: true,
                        child: Image.network(
                          toy.imageUrlList.elementAt(index).url128,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
          Container(
            padding: SharedPaddings.all8,
            decoration: BoxDecoration(
              gradient: toyGradient,
              borderRadius: SharedBorderRadius.bottomLeftRight12,
            ),
            child: Column(
              children: [
                Center(
                  child: ValueListenableBuilder(
                    valueListenable: imageIndex,
                    builder: (context, index, _) {
                      return AnimatedSmoothIndicator(
                        activeIndex: index,
                        count: toy.imageUrlList.length,
                        effect: const ScrollingDotsEffect(
                          dotColor: Colors.black38,
                          activeDotColor: Colors.white,
                        ),
                      );
                    },
                  ),
                ),
                const Divider(color: Colors.white38, indent: 16, endIndent: 16),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: SharedPaddings.left12,
                        child: Text(
                          toy.name,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Builder(
                      builder: (context) {
                        final isLiked = context.select(
                          (ToysBloc bloc) =>
                              bloc.state.likedToyIDs.contains(toy.id),
                        );
                        final toyLikedCount =
                            isLiked ? toy.likeCount + 1 : toy.likeCount;
                        return Row(
                          children: [
                            Text(
                              toyLikedCount.toString(),
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge
                                  ?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            SharedGap.gap4,
                            GestureDetector(
                              onTap: isLiked
                                  ? () {
                                      context.read<ToysBloc>().add(
                                            ToysEvent.unlikeToy(toyID: toy.id!),
                                          );
                                    }
                                  : () {
                                      context.read<ToysBloc>().add(
                                            ToysEvent.likeToy(toyID: toy.id!),
                                          );
                                    },
                              child: Icon(
                                !isLiked
                                    ? Icons.favorite_outline
                                    : Icons.favorite,
                                size: 40,
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                    SharedGap.gap12,
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
