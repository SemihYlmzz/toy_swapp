import 'package:flutter/material.dart';
import 'package:shared_constants/shared_constants.dart';
import 'package:shared_widgets/shared_widgets.dart';
import 'package:toy_swapp/create_toy/create_toy.dart';

class CreateToyView extends StatelessWidget {
  const CreateToyView({super.key});

  @override
  Widget build(BuildContext context) {
    return const BaseScaffold(
      safeArea: true,
      appBar: CreateToyAppBar(),
      body: BaseColumn(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SharedGap.gap12,
        ],
      ),
    );
  }
}
