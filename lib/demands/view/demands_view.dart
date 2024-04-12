import 'package:flutter/material.dart';

class DemandsView extends StatelessWidget {
  const DemandsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: TextButton(
            onPressed: () {},
            child: const Text('Display Demands'),
          ),
        ),
      ],
    );
  }
}
