import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../create_toy.dart';

class CreateToyDialog extends StatelessWidget {
  const CreateToyDialog({required this.builderContext, super.key});
  final BuildContext builderContext;
  @override
  Widget build(BuildContext context) {
    final cubitState = builderContext.watch<CreateToyCubit>().state;

    return Animate(
      effects: const [
        FadeEffect(),
        MoveEffect(
          begin: Offset(0, 15),
        ),
      ],
      child: AlertDialog(
        title: const Text('Are you sure?'),
        content: const Text('Are you sure you want to create this toy?'),
        actions: [
          TextButton(
            onPressed: () async {
              await Navigator.maybePop(context);
              final toyAge = cubitState.toyAge;
              final toyCondition = cubitState.toyCondition;
              final toyGender = cubitState.toyGender;
              if (cubitState.imageUrlList.isEmpty) {
                return;
              }
              if (toyAge == null) {
                return;
              }
              if (toyCondition == null) {
                return;
              }
              if (toyGender == null) {
                return;
              }
              if (cubitState.toyName.isNotValid) {
                return;
              }
              if (cubitState.toyDescription.isNotValid) {
                return;
              }
              if (!builderContext.mounted) {
                return;
              }
              builderContext.read<CreateToyBloc>().add(
                    CreateToyEvent.createOwnedToy(
                      imageUrlList: cubitState.imageUrlList,
                      toyAge: toyAge,
                      toyCondition: toyCondition,
                      toyDescription: cubitState.toyDescription,
                      toyGender: toyGender,
                      toyName: cubitState.toyName,
                    ),
                  );
            },
            child: const Text('Create'),
          ),
        ],
      ),
    );
  }
}
