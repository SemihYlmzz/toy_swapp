import 'dart:ui';
import 'package:flutter/material.dart';

import '../startup.dart';

class StartupView extends StatelessWidget {
  const StartupView({super.key});

  @override
  Widget build(BuildContext context) {
    final brightness = PlatformDispatcher.instance.platformBrightness;

    return Scaffold(
      backgroundColor: brightness == Brightness.dark
          ? const Color(0xFF111111)
          : const Color(0xFFFFFFFF),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            child: Image.asset('assets/flame_logo.png', height: 128),
          ),
          Positioned(
            bottom: MediaQuery.of(context).viewInsets.bottom + 80,
            child: const InitializeProgressDisplayer(),
          ),
        ],
      ),
    );
  }
}
