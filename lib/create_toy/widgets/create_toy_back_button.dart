import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_touch_ripple/widgets/widget.dart';

import '../create_toy.dart';

class CreateToyBackButton extends StatelessWidget {
  const CreateToyBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final enterValueState = context.select(
      (CreateToyCubit bloc) => bloc.state.enterValueState,
    );
    return TouchRipple<void>(
      onTap: () {
        switch (enterValueState) {
          case CreateToyEnterValueState.age:
            context.read<CreateToyCubit>().clearToyAge();
          case CreateToyEnterValueState.condition:
            context.read<CreateToyCubit>().clearToyCondition();
          case CreateToyEnterValueState.description:
            context.read<CreateToyCubit>().clearToyDescription();
          case CreateToyEnterValueState.done:
            break;
          case CreateToyEnterValueState.gender:
            context.read<CreateToyCubit>().clearToyGender();
          case CreateToyEnterValueState.name:
            Navigator.maybePop(context);
            return;
        }
        context.read<CreateToyCubit>().previousEnterValueState();
      },
      child: ColoredBox(
        color: Colors.redAccent.withOpacity(0.4),
        child: Center(
          child: Icon(Icons.adaptive.arrow_back),
        ),
      ),
    );
  }
}
