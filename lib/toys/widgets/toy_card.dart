import 'package:flutter/material.dart';
import 'package:shared_constants/shared_constants.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../toy_detail/toy_detail.dart';

class ToyCard extends StatelessWidget {
  const ToyCard({
    required this.imageSize,
    super.key,
  });
  final int imageSize;
  @override
  Widget build(BuildContext context) {
    final imagePageController = PageController();
    final contextTheme = Theme.of(context);
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
                          image: const DecorationImage(
                            image: NetworkImage(
                              'https://picsum.photos/128/128',
                            ),
                          ),
                        ),
                      ),
                      SharedGap.gap8,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Semih Yılmaz',
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
                    controller: imagePageController,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      final imageNumber = index;
                      return GestureDetector(
                        onTap: () {
                          ToyDetailRouter.instance.push(
                            context,
                            ToyDetailScreenRequirements(
                              imageSize: imageSize,
                              imageNumber: imageNumber,
                              toyOwnerAuthId: '7vqVPe3zKdQqf4QsF7WFTQzNQ692',
                            ),
                          );
                        },
                        child: Hero(
                          tag: imageSize + imageNumber,
                          child: Image.network(
                            'https://picsum.photos/$imageSize/$imageSize?image=$imageNumber',
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  ),
                  Container(
                    width: double.infinity,
                    height: 25,
                    color: Colors.black26,
                    child: Center(
                      child: SmoothPageIndicator(
                        controller: imagePageController,
                        onDotClicked: (index) {
                          imagePageController.animateToPage(
                            index,
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeInOut,
                          );
                        },
                        count: 10,
                        effect: const ScrollingDotsEffect(
                          dotColor: Colors.white24,
                          activeDotColor: Colors.pinkAccent,
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
              color: Colors.pinkAccent.withOpacity(0.5),
              borderRadius: SharedBorderRadius.bottomLeftRight12,
            ),
            child: const Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: SharedPaddings.left12,
                    child: Text(
                      'Pelush Bear',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Icon(
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
