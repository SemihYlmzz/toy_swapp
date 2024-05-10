import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:shared_constants/shared_constants.dart';

class ConsumerDataCalibrationView extends StatelessWidget {
  const ConsumerDataCalibrationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Animate(
        effects: const [
          FadeEffect(
            delay: SharedDurations.s1,
          ),
        ],
        child: const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
