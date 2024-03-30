import 'package:flutter/material.dart';

import '../startup.dart';

class StartupView extends StatelessWidget {
  const StartupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const StartupAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
              onPressed: () {},
              child: const Text('Startup Button'),
            ),
          ),
        ],
      ),
    );
  }
}
