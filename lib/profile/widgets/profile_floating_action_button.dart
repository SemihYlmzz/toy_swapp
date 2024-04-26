import 'package:flutter/material.dart';

class ProfileFloatingActionButton extends StatelessWidget {
  const ProfileFloatingActionButton({required this.onPressed, super.key});
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.pinkAccent.shade700,
      onPressed: onPressed,
      child: const Icon(Icons.favorite),
    );
  }
}
