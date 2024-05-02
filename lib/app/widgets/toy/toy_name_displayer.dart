import 'package:flutter/material.dart';
import 'package:shared_constants/shared_constants.dart';

class ToyNameDisplayer extends StatelessWidget {
  const ToyNameDisplayer({
    required this.toyName,
    super.key,
  });

  final String toyName;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SharedGap.gap20,
        Expanded(
          child: Text(
            toyName,
            style: Theme.of(context).textTheme.displaySmall,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
