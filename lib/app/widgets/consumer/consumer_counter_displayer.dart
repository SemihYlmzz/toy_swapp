import 'package:flutter/material.dart';

class ConsumerCounterDisplayer extends StatelessWidget {
  const ConsumerCounterDisplayer({
    required this.counterName,
    required this.counterValue,
    super.key,
  });
  final String counterName;
  final int counterValue;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 75,
      child: Column(
        children: [
          Text(
            '$counterValue',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          Text(
            counterName,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }
}
