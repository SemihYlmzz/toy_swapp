import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_touch_ripple/widgets/widget.dart';
import 'package:shared_constants/shared_constants.dart';
import 'package:toy_repository/toy_repository.dart';

import '../../app/app.dart';
import '../create_toy.dart';

class CreateToyValueUpdater extends StatelessWidget {
  const CreateToyValueUpdater({required this.onChanged, super.key});
  final VoidCallback onChanged;
  @override
  Widget build(BuildContext context) {
    final enterValueState = context.select(
      (CreateToyCubit bloc) => bloc.state.enterValueState,
    );
    return switch (enterValueState) {
      CreateToyEnterValueState.name => const CreateToyNameUpdater(),
      CreateToyEnterValueState.description =>
        const CreateToyDescriptionUpdater(),
      CreateToyEnterValueState.age => CreateToyAgeUpdater(
          onChanged: onChanged,
        ),
      CreateToyEnterValueState.gender => CreateToyGenderUpdater(
          onChanged: onChanged,
        ),
      CreateToyEnterValueState.condition => CreateToyConditionUpdater(
          onChanged: onChanged,
        ),
      CreateToyEnterValueState.done => const SizedBox.shrink(),
    };
  }
}

class CreateToyNameUpdater extends StatelessWidget {
  const CreateToyNameUpdater({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final cubitState = context.select((CreateToyCubit bloc) => bloc.state);
    return ToySwappTextField(
      labelText: 'Toy Name',
      initialValue: cubitState.toyName.value,
      textCapitalization: TextCapitalization.words,
      onChanged: context.read<CreateToyCubit>().toyNameChanged,
      errorText: cubitState.displayObjectErrors
          ? cubitState.toyName.error?.name
          : null,
      maxLines: 1,
    );
  }
}

class CreateToyDescriptionUpdater extends StatelessWidget {
  const CreateToyDescriptionUpdater({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final createToyCubit = context.watch<CreateToyCubit>();
    return ToySwappTextField(
      labelText: 'Toy Description',
      textCapitalization: TextCapitalization.sentences,
      initialValue: createToyCubit.state.toyDescription.value,
      onChanged: createToyCubit.toyDescriptionChanged,
      errorText: createToyCubit.state.displayObjectErrors
          ? createToyCubit.state.toyDescription.error?.name
          : null,
      maxLines: 2,
      maxLength: 300,
      minLines: 1,
    );
  }
}

class CreateToyAgeUpdater extends StatelessWidget {
  const CreateToyAgeUpdater({required this.onChanged, super.key});
  final VoidCallback onChanged;
  @override
  Widget build(BuildContext context) {
    final createToyCubit = context.watch<CreateToyCubit>();
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int i = 0; i < ToyAge.values.length; i++)
            TouchRipple<void>(
              onTap: () {
                onChanged();
                createToyCubit.toyAgeChanged(ToyAge.values[i]);
              },
              child: AnimatedContainer(
                duration: SharedDurations.ms370,
                margin: SharedPaddings.all4,
                height: 56,
                width: 100,
                decoration: BoxDecoration(
                  color: createToyCubit.state.toyAge != ToyAge.values[i]
                      ? Colors.white30
                      : Colors.greenAccent.withOpacity(0.7),
                  borderRadius: SharedBorderRadius.circular8,
                ),
                child: Center(child: Text(ToyAge.values[i].displayName)),
              ),
            ),
        ],
      ),
    );
  }
}

class CreateToyGenderUpdater extends StatelessWidget {
  const CreateToyGenderUpdater({required this.onChanged, super.key});
  final VoidCallback onChanged;
  @override
  Widget build(BuildContext context) {
    final createToyCubit = context.watch<CreateToyCubit>();
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int i = 0; i < ToyGender.values.length; i++)
            TouchRipple<void>(
              onTap: () {
                onChanged();
                createToyCubit.toyGenderChanged(ToyGender.values[i]);
              },
              child: AnimatedContainer(
                duration: SharedDurations.ms370,
                margin: SharedPaddings.all4,
                height: 56,
                width: 100,
                decoration: BoxDecoration(
                  color: createToyCubit.state.toyGender != ToyGender.values[i]
                      ? Colors.white30
                      : Colors.greenAccent.withOpacity(0.7),
                  borderRadius: SharedBorderRadius.circular8,
                ),
                child: Center(child: Text(ToyGender.values[i].displayName)),
              ),
            ),
        ],
      ),
    );
  }
}

class CreateToyConditionUpdater extends StatelessWidget {
  const CreateToyConditionUpdater({required this.onChanged, super.key});
  final VoidCallback onChanged;
  @override
  Widget build(BuildContext context) {
    final createToyCubit = context.watch<CreateToyCubit>();
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              for (int i = 0; i < ToyCondition.values.length; i++)
                TouchRipple<void>(
                  onTap: () {
                    onChanged();
                    createToyCubit.toyConditionChanged(ToyCondition.values[i]);
                  },
                  child: AnimatedContainer(
                    duration: SharedDurations.ms370,
                    margin: SharedPaddings.all4,
                    height: 56,
                    width: 100,
                    decoration: BoxDecoration(
                      color: createToyCubit.state.toyCondition !=
                              ToyCondition.values[i]
                          ? Colors.white30
                          : Colors.greenAccent.withOpacity(0.7),
                      borderRadius: SharedBorderRadius.circular8,
                    ),
                    child:
                        Center(child: Text(ToyCondition.values[i].displayName)),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
