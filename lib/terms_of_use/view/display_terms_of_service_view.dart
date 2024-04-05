import 'package:flutter/material.dart';

class DisplayTermsOfServiceView extends StatelessWidget {
  const DisplayTermsOfServiceView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text('Terms of Service')),
    );
  }
}
