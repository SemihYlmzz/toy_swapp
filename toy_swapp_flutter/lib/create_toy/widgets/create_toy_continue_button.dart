import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_touch_ripple/widgets/widget.dart';
import 'package:shared_constants/shared_constants.dart';
import 'package:toy_swapp/create_toy/create_toy.dart';

class CreateToyContinueButton extends StatelessWidget {
  const CreateToyContinueButton({
    required this.onPressed,
    super.key,
  });
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final cubitState = context.watch<CreateToyCubit>().state;
    final enterValueState = cubitState.enterValueState;

    final iconData = enterValueState != CreateToyEnterValueState.done
        ? Icons.adaptive.arrow_forward
        : Icons.done;
    return Builder(
      builder: (builderContext) {
        return TouchRipple<void>(
          onTap: () {
            if (cubitState.displayObjectErrors &&
                enterValueState != CreateToyEnterValueState.name &&
                enterValueState != CreateToyEnterValueState.description) {
              return;
            }
            switch (enterValueState) {
              case CreateToyEnterValueState.name:
                if (cubitState.toyName.isNotValid) {
                  context.read<CreateToyCubit>().showObjectErrors();
                  return;
                }
              case CreateToyEnterValueState.description:
                if (cubitState.toyDescription.isNotValid) {
                  context.read<CreateToyCubit>().showObjectErrors();
                  return;
                }
              case CreateToyEnterValueState.age:
                if (cubitState.toyAge == null) {
                  context.read<CreateToyCubit>().showObjectErrors();
                  return;
                }
              case CreateToyEnterValueState.gender:
                if (cubitState.toyGender == null) {
                  context.read<CreateToyCubit>().showObjectErrors();
                  return;
                }
              case CreateToyEnterValueState.condition:
                if (cubitState.toyCondition == null) {
                  context.read<CreateToyCubit>().showObjectErrors();
                  return;
                }
              case CreateToyEnterValueState.done:
                showDialog<void>(
                  context: context,
                  builder: (context) {
                    return CreateToyDialog(builderContext: builderContext);
                  },
                );
                return;
            }
            Future.delayed(SharedDurations.ms200, onPressed);
            context.read<CreateToyCubit>().hideObjectErrors();
            context.read<CreateToyCubit>().nextEnterValueState();
          },
          child: ColoredBox(
            color: Colors.greenAccent.withOpacity(0.4),
            child: Center(
              child: Icon(iconData),
            ),
          ),
        );
      },
    );
  }
}
