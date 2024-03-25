import 'package:flutter/material.dart';
import 'package:toy_swapp/l10n/l10n.dart';
import '../auth_sign_in.dart';

class AuthSignInView extends StatelessWidget {
  const AuthSignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AuthSignInAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
              onPressed: () {},
              child: Text(context.l10n.counterAppBarTitle),
            ),
          ),
        ],
      ),
    );
  }
}
