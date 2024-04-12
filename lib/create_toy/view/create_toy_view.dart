import 'package:flutter/material.dart';

class CreateToyView extends StatelessWidget {
  const CreateToyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: TextButton(
            onPressed: () {},
            child: const Text('Create Toy'),
          ),
        ),
      ],
    );
  }
}
