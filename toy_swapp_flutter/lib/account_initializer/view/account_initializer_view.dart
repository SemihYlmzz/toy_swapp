import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:shared_constants/shared_constants.dart';
import 'package:shared_widgets/shared_widgets.dart';

import '../account_initializer.dart';

class AccountInitializerView extends StatelessWidget {
  const AccountInitializerView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      safeArea: true,
      appBar: const AccountInitializerAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Animate(
            effects: const [
              FadeEffect(),
              ScaleEffect(
                begin: Offset(0.85, 0.85),
              ),
            ],
            delay: const Duration(seconds: 1),
            child: const CircularProgressIndicator(),
          ),
          SharedGap.gap32,
          Animate(
            effects: const [
              FadeEffect(),
              ScaleEffect(
                begin: Offset(0.85, 0.85),
              ),
            ],
            delay: const Duration(seconds: 3),
            child: Text(
              'Give me a second!',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
        ],
      ),
    );
  }
}
