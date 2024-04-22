import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shared_constants/shared_constants.dart';
import 'package:shared_widgets/shared_widgets.dart';

class CreateToyView extends StatelessWidget {
  const CreateToyView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      safeArea: true,
      body: Stack(
        children: [
          BaseColumn(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.network(
                'https://picsum.photos/512/512?image=10',
                width: MediaQuery.of(context).size.width,
                height: 260,
                fit: BoxFit.cover,
              ),
              SharedGap.gap4,
              Container(
                height: 60,
                padding: SharedPaddings.left8,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) => Center(
                    child: Container(
                      width: 60,
                      height: 60,
                      margin: SharedPaddings.right12,
                      decoration: BoxDecoration(
                        borderRadius: SharedBorderRadius.circular4,
                        image: DecorationImage(
                          image: NetworkImage(
                            'https://picsum.photos/128/128?image=${index + 24}',
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
                  Text(
                    'Pelush Bear',
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                ],
              ),
              SharedGap.gap12,
              Padding(
                padding: SharedPaddings.horizontal20,
                child: Text(
                  'Pelush Bear is a soft and cuddly bear that is perfect '
                  'for any child. It is made of high-quality materials and '
                  'is designed to be durable and long-lasting. '
                  'The bear is also machine washable, making it easy to keep '
                  'clean and looking new. Pelush Bear is the perfect '
                  'companion for any child and is sure to bring hours '
                  'of joy and comfort.',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Theme.of(context)
                            .colorScheme
                            .onBackground
                            .withOpacity(0.6),
                      ),
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
                      'Toy Details',
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
              Column(
                children: [
                  Text(
                    'Min. Age',
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                          color: Colors.pinkAccent,
                        ),
                  ),
                  Text(
                    '3',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ],
              ),
              SharedGap.gap128,
            ],
          ),
          Align(
            alignment: Alignment.topLeft,
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
        ],
      ),
    );
  }
}
