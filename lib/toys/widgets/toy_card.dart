import 'package:flutter/material.dart';
import 'package:shared_constants/shared_constants.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:toy_repository/toy_repository.dart';

import '../../app/app.dart';
import '../../toy_detail/toy_detail.dart';
import '../toys.dart';

class ToyCard extends StatefulWidget {
  const ToyCard({
    required this.index,
    required this.toyAndOwnerConsumer,
    super.key,
  });

  final int index;
  final ToyAndOwnerConsumer toyAndOwnerConsumer;

  @override
  State<ToyCard> createState() => _ToyCardState();
}

class _ToyCardState extends State<ToyCard> with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;
  late final PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final contextTheme = Theme.of(context);
    final toy = widget.toyAndOwnerConsumer.toy;
    final ownerConsumer = widget.toyAndOwnerConsumer.ownerConsumer;
    final toyGradient = switch (toy.details.gender) {
      ToyGender.boy => AppColors.boyToyGradient,
      ToyGender.girl => AppColors.girlToyGradient,
      ToyGender.unisex => AppColors.unisexToyGradient,
    };

    return Container(
      width: 320,
      height: 500,
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
                              ownerConsumer.avatarUrls.url128,
                            ),
                          ),
                        ),
                      ),
                      SharedGap.gap8,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${ownerConsumer.firstName} '
                            '${ownerConsumer.lastName}',
                            style: contextTheme.textTheme.titleLarge,
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
            child: SizedBox(
              height: 340,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  PageView.builder(
                    key: ValueKey(toy.id),
                    controller: _pageController,
                    itemCount: toy.imageUrlList.length,
                    itemBuilder: (context, index) {
                      final imageNumber = index;
                      return GestureDetector(
                        onTap: () {
                          ToyDetailRouter.instance.push(
                            context,
                            ToyDetailScreenRequirements(
                              imageSize: 1,
                              imageNumber: imageNumber,
                              toyOwnerAuthId: '7vqVPe3zKdQqf4QsF7WFTQzNQ692',
                            ),
                          );
                        },
                        child: Hero(
                          tag: toy.imageUrlList.elementAt(index).url128,
                          child: Image.network(
                            toy.imageUrlList.elementAt(index).url128,
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  ),
                  Container(
                    width: double.infinity,
                    height: 25,
                    color: Colors.black45,
                    child: Center(
                      child: SmoothPageIndicator(
                        controller: _pageController,
                        onDotClicked: (index) {
                          _pageController.animateToPage(
                            index,
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeInOut,
                          );
                        },
                        count: toy.imageUrlList.length,
                        effect: ScrollingDotsEffect(
                          dotColor: Colors.white38,
                          activeDotColor: contextTheme.primaryColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: SharedPaddings.all8,
            decoration: BoxDecoration(
              gradient: toyGradient,
              borderRadius: SharedBorderRadius.bottomLeftRight12,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: SharedPaddings.left12,
                    child: Text(
                      toy.name,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const Icon(
                  Icons.favorite_outline,
                  size: 40,
                ),
                SharedGap.gap12,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
