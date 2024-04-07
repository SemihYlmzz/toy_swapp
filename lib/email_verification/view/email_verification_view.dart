import 'package:flutter/material.dart';

import '../email_verification.dart';

class EmailVerificationView extends StatelessWidget {
  const EmailVerificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EmailVerificationAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
              onPressed: () {},
              child: const Text('Resend Verification Email'),
            ),
          ),
        ],
      ),
    );
  }
}
