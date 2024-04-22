import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shared_constants/shared_constants.dart';
import 'package:shared_widgets/shared_widgets.dart';
import 'package:toy_swapp/app/app.dart';

class CreateToyView extends StatelessWidget {
  const CreateToyView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      safeArea: true,
      body: Stack(
        children: [
          BaseColumn(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const ToySwappTextField(
                labelText: 'Toy Name',
              ),
              const ToySwappTextField(
                labelText: 'Description',
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Select Toy Images'),
              ),
              DropdownButton(
                items: const [
                  DropdownMenuItem<void>(
                    child: Text('Min. Age'),
                  ),
                ],
                onChanged: (value) {},
              ),
              DropdownButton(
                items: const [
                  DropdownMenuItem<void>(
                    child: Text('Pref. Gender'),
                  ),
                ],
                onChanged: (value) {},
              ),
              DropdownButton(
                items: const [
                  DropdownMenuItem<void>(
                    child: Text('Toy Condition'),
                  ),
                ],
                onChanged: (value) {},
              ),
            ],
          ),
          Align(
            alignment: Alignment.topLeft,
            child: GestureDetector(
              onTap: () {
                Navigator.maybePop(context);
              },
              child: Container(
                width: 50,
                height: 50,
                margin: SharedPaddings.all20,
                decoration: const BoxDecoration(
                  color: Colors.black54,
                  shape: BoxShape.circle,
                ),
                child: const Center(
                  child: Icon(Icons.close_rounded),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 70,
              width: 70,
              margin: SharedPaddings.all16,
              decoration: BoxDecoration(
                color: Colors.white12,
                border: Border.all(
                  color: Colors.pinkAccent,
                ),
                borderRadius: SharedBorderRadius.circular8,
              ),
              child: const Center(
                child: Icon(Icons.favorite_outline, size: 32),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
