import 'package:flutter/material.dart';
import 'package:shared_constants/shared_constants.dart';


class ToyDescriptionDisplayer extends StatelessWidget {
  const ToyDescriptionDisplayer({
    required this.toyDescription,
    super.key,
  });
  final String toyDescription;
  @override
  Widget build(BuildContext context) {
    final contextTheme = Theme.of(context);
    return Padding(
      padding: SharedPaddings.horizontal20,
      child: Text(
        toyDescription,
        style: contextTheme.textTheme.bodyLarge?.copyWith(
          color: contextTheme.colorScheme.onBackground.withOpacity(0.6),
        ),
      ),
    );
  }
}
