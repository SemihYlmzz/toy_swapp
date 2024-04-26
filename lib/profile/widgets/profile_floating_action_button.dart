import 'package:flutter/material.dart';

class ProfileFloatingActionButton extends StatelessWidget {
  const ProfileFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.pinkAccent.shade700,
      onPressed: () {},
      child: const Icon(Icons.favorite),
    );
  }
}
