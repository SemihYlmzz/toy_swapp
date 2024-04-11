import 'package:flutter/material.dart';

import '../toys.dart';

class ToysView extends StatelessWidget {
  const ToysView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ToysAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
              onPressed: () {},
              child: const Text('Display Toys'),
            ),
          ),
        ],
      ),
    );
  }
}
