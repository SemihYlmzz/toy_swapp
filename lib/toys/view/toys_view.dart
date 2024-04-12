import 'package:flutter/material.dart';

class ToysView extends StatelessWidget {
  const ToysView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: TextButton(
            onPressed: () {},
            child: const Text('Display Toys'),
          ),
        ),
      ],
    );
  }
}
