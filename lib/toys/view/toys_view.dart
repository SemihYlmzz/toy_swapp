import 'package:flutter/material.dart';
import 'package:shared_constants/shared_constants.dart';

import '../toys.dart';

class ToysView extends StatelessWidget {
  const ToysView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Center(
          child: Padding(
            padding: SharedPaddings.bottom32,
            child: ToyCard(
              imageSize: 512 + index * 9,
            ),
          ),
        );
      },
    );
  }
}
