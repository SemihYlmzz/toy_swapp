import 'package:flutter/material.dart';


class ConsumerAvatarDisplayer extends StatelessWidget {
  const ConsumerAvatarDisplayer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).colorScheme.primary,
          width: 2,
        ),
        shape: BoxShape.circle,
        image: const DecorationImage(
          image: NetworkImage(
            'https://picsum.photos/257/257',
          ),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
