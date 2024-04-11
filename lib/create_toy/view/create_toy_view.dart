import 'package:flutter/material.dart';

import '../create_toy.dart';

class CreateToyView extends StatelessWidget {
  const CreateToyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CreateToyAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
              onPressed: () {},
              child: const Text('Create Toy'),
            ),
          ),
        ],
      ),
    );
  }
}
