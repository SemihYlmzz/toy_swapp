import 'package:consumer_repository/consumer_repository.dart';
import 'package:flutter/material.dart';
import 'package:shared_constants/shared_constants.dart';
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
            counterValue: consumer.counters.ownedToy,
          ),
          ConsumerCounterDisplayer(
            counterName: 'Switched',
            counterValue: consumer.counters.switchs,
          ),
          ConsumerCounterDisplayer(
            counterName: 'Chance',
            counterValue: consumer.counters.switchChance,
          ),
          SharedGap.gap4,
        ],
      ),
    );
  }
}
