import 'package:flutter/material.dart';
import 'package:shared_constants/shared_constants.dart';

class ToyDetailsDividerText extends StatelessWidget {
  const ToyDetailsDividerText({
    this.isDisplayable = true,
    super.key,
  });
  final bool isDisplayable;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        const Divider(thickness: 0.1),
        Container(
          color: Theme.of(context).colorScheme.background,
          padding: SharedPaddings.all20,
          child: Text(
            'Toy Details',
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  color: Theme.of(context)
                      .colorScheme
                      .onBackground
                      .withOpacity(0.4),
                ),
          ),
        ),
      ],
    );
  }
}
