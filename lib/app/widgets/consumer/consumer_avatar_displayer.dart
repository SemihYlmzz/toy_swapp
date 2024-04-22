import 'package:consumer_repository/consumer_repository.dart';
import 'package:flutter/material.dart';

class ConsumerAvatarDisplayer extends StatelessWidget {
  const ConsumerAvatarDisplayer({
    required this.consumer,
    super.key,
  });

  final Consumer consumer;
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
        image: DecorationImage(
          image: NetworkImage(consumer.avatarUrls.url256),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
