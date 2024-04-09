import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:toy_swapp/account_registration/account_registration.dart';

import '../account_initializer.dart';

class AccountInitializerView extends StatelessWidget {
  const AccountInitializerView({super.key});

  @override
  Widget build(BuildContext context) {
    context.pushNamed(AccountRegistrationRouter.instance.name);
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
