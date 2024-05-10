import 'package:flutter/material.dart';


class SupportReportsView extends StatelessWidget {
  const SupportReportsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
              onPressed: () {},
              child: const Text('Support Reports View'),
            ),
          ),
        ],
      );
  }
}
