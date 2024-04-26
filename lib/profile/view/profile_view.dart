import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_constants/shared_constants.dart';
import 'package:shared_widgets/shared_widgets.dart';

import '../../app/app.dart';
import '../../navigator_bar/bloc/navigator_bar_bloc.dart';
import '../../toy_detail/toy_detail.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  final _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final currentConsumer = context.select(
      (NavigatorBarBloc bloc) => bloc.state.currentConsumer,
    );
    return Scaffold(
      body: BaseColumn(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SharedGap.gap16,
          ConsumerCard(consumer: currentConsumer),
          SharedGap.gap16,
          Expanded(
            child: SizedBox(
              height: 320,
              child: PageView(
                controller: _pageController,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 4,
                        mainAxisSpacing: 8,
                        mainAxisExtent: 190,
                      ),
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        final photoSize = 200 + index;
                        return ControlOwnedToyCard(
                          photoSize: photoSize,
                          index: index,
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 100,
                    height: 100,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ControlOwnedToyCard extends StatelessWidget {
  const ControlOwnedToyCard({
    required this.photoSize,
    required this.index,
    super.key,
  });

  final int photoSize;
  final int index;

  @override
  Widget build(BuildContext context) {
    final toyGradient = index == 0 || index % 3 == 0
        ? AppColors.unisexToyGradient
        : index % 4 == 1
            ? AppColors.boyToyGradient
            : AppColors.girlToyGradient;

    return GestureDetector(
      onTap: () {
        ToyDetailRouter.instance.push(
          context,
          const ToyDetailScreenRequirements(
            imageSize: 1,
            imageNumber: 1,
            toyOwnerAuthId: '7vqVPe3zKdQqf4QsF7WFTQzNQ692',
          ),
        );
      },
      child: Container(
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
              child: Image.network(
                'https://picsum.photos/$photoSize/$photoSize',
                width: 150,
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
                          color: Colors.redAccent,
                          size: 32,
                        ),
                      ),
                      Text(
                        '10',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ],
                  ),
                  Switch.adaptive(
                    activeColor: index == 0 || index % 3 == 0
                        ? Colors.deepPurpleAccent
                        : index % 4 == 1
                            ? Colors.blueAccent
                            : Colors.pinkAccent,
                    value: true,
                    onChanged: (value) {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
