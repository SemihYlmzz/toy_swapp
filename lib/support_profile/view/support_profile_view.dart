import 'package:flutter/material.dart';

class SupportProfileView extends StatelessWidget {
  const SupportProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
              onPressed: () {},
              child: const Text('Support Profile View'),
            ),
          ),
        ],
      );
  }
}
