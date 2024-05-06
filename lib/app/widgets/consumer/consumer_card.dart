import 'package:flutter/material.dart';
import 'package:shared_constants/shared_constants.dart';
import 'package:toy_swapp_client/toy_swapp_client.dart';
import 'consumer.dart';

class ConsumerCard extends StatelessWidget {
  const ConsumerCard({
    required this.consumer,
    super.key,
  });
  final Consumer consumer;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: SharedPaddings.horizontal20,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ConsumerAvatarDisplayer(
            consumer: consumer,
          ),
          ConsumerCounterDisplayer(
            counterName: 'Toys',
            counterValue: consumer.toyCount,
          ),
          ConsumerCounterDisplayer(
            counterName: 'Switched',
            counterValue: consumer.swapCount,
          ),
          ConsumerCounterDisplayer(
            counterName: 'Chance',
            counterValue: consumer.switchChanceCount,
          ),
        ],
      ),
    );
  }
}
