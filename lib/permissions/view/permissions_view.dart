import 'package:flutter/material.dart';

import '../permissions.dart';

class PermissionsView extends StatelessWidget {
  const PermissionsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PermissionsAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
              onPressed: () {},
              child: const Text('Permissions View'),
            ),
          ),
        ],
      ),
    );
  }
}
