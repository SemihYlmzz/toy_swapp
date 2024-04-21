import 'package:flutter/material.dart';
import 'package:shared_constants/shared_constants.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
                                'Your Distance',
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
              child: PageView.builder(
                controller: imagePageController,
                itemCount: 10,
                itemBuilder: (context, index) {
                  final perImageSize = imageSize + index;
                  return Image.network(
                    'https://picsum.photos/$perImageSize/$perImageSize',
                    fit: BoxFit.cover,
                  );
                },
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.pinkAccent.withOpacity(0.5),
              borderRadius: SharedBorderRadius.bottomLeftRight12,
            ),
            child: Column(
              children: [
                SharedGap.gap4,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SharedGap.gap12,
                    Column(
                      children: [
                        Text(
                          'Min. Age',
                          style: contextTheme.textTheme.labelSmall,
                        ),
                        Text(
                          '3',
                          style: contextTheme.textTheme.headlineMedium,
                        ),
                      ],
                    ),
                    Expanded(
                      child: Center(
                        child: Column(
                          children: [
                            SharedGap.gap8,
                            SmoothPageIndicator(
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
                                dotColor: Colors.black45,
                                activeDotColor: Colors.white,
                              ),
                            ),
                            SharedGap.gap8,
                            const Text(
                              'Pelush Bear',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Row(
                      children: [
                        Icon(
                          Icons.favorite_outline,
                          size: 40,
                        ),
                      ],
                    ),
                    SharedGap.gap12,
                  ],
                ),
                SharedGap.gap4,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
