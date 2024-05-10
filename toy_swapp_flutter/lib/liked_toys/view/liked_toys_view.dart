import 'package:flutter/material.dart';

import '../liked_toys.dart';

class LikedToysView extends StatelessWidget {
  const LikedToysView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const LikedToysAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
              onPressed: () {},
              child: const Text('Liked Toys'),
            ),
          ),
        ],
      ),
    );
  }
}
