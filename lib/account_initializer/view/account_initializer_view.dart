import 'package:flutter/material.dart';

import '../account_initializer.dart';

class AccountInitializerView extends StatelessWidget {
  const AccountInitializerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AccountInitializerAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
              onPressed: () {},
              child: const Text('Initialize Account'),
            ),
          ),
        ],
      ),
    );
  }
}
