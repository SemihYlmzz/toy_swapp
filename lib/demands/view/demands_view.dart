import 'package:flutter/material.dart';

import '../demands.dart';

class DemandsView extends StatelessWidget {
  const DemandsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DemandsAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
              onPressed: () {},
              child: const Text('Display Demands'),
            ),
          ),
        ],
      ),
    );
  }
}
