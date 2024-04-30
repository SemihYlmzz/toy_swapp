import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_constants/shared_constants.dart';

import '../../app/app.dart';
import '../create_toy.dart';

class CreateToyDetailsDisplayer extends StatelessWidget {
  const CreateToyDetailsDisplayer({super.key});

  @override
  Widget build(BuildContext context) {
    final cubitState = context.watch<CreateToyCubit>().state;
    final enterValueState = cubitState.enterValueState;
    final isVisible = switch (enterValueState) {
      CreateToyEnterValueState.name => false,
      CreateToyEnterValueState.description => false,
      _ => true,
    };
    final toyAge = cubitState.toyAge;
    final toyGender = cubitState.toyGender;
    final toyCondition = cubitState.toyCondition;
    return isVisible
        ? Animate(
            effects: const [
              FadeEffect(delay: SharedDurations.ms370),
              MoveEffect(
                begin: Offset(0, 16),
                delay: SharedDurations.ms370,
              ),
            ],
            child: Column(
              children: [
                const ToyDetailsDividerText(),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width,
                  child: Wrap(
                    spacing: 32,
                    runSpacing: 16,
                    alignment: WrapAlignment.center,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text(
                            'Min. Age',
                            style: Theme.of(context)
                                .textTheme
                                .labelSmall
                                ?.copyWith(
                                  color: Colors.pinkAccent,
                                ),
                          ),
                          Animate(
                            target: (cubitState.displayObjectErrors &&
                                    enterValueState ==
                                        CreateToyEnterValueState.age)
                                ? 1
                                : 0,
                            effects: const [
                              ShakeEffect(),
                            ],
                            onComplete: (v) {
                              context.read<CreateToyCubit>().hideObjectErrors();
                            },
                            child: Text(
                              toyAge != null ? '$toyAge' : 'Not Selected',
                              style: Theme.of(context).textTheme.headlineMedium,
                            ),
                          ),
                        ],
                      ),
                      if (enterValueState != CreateToyEnterValueState.age)
                        Animate(
                          effects: const [
                            FadeEffect(delay: SharedDurations.ms370),
                            MoveEffect(
                              begin: Offset(0, 16),
                              delay: SharedDurations.ms370,
                            ),
                          ],
                          child: Column(
                            children: [
                              Text(
                                'Mostly Used by',
                                style: Theme.of(context)
                                    .textTheme
                                    .labelSmall
                                    ?.copyWith(
                                      color: Colors.pinkAccent,
                                    ),
                              ),
                              Animate(
                                target: (cubitState.displayObjectErrors &&
                                        enterValueState ==
                                            CreateToyEnterValueState.gender)
                                    ? 1
                                    : 0,
                                effects: const [
                                  ShakeEffect(),
                                ],
                                onComplete: (v) {
                                  context
                                      .read<CreateToyCubit>()
                                      .hideObjectErrors();
                                },
                                child: Text(
                                  toyGender != null
                                      ? '$toyGender'
                                      : 'Not Selected',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineMedium,
                                ),
                              ),
                            ],
                          ),
                        ),
                      if (enterValueState != CreateToyEnterValueState.gender &&
                          enterValueState != CreateToyEnterValueState.age)
                        Animate(
                          effects: const [
                            FadeEffect(delay: SharedDurations.ms370),
                            MoveEffect(
                              begin: Offset(0, 16),
                              delay: SharedDurations.ms370,
                            ),
                          ],
                          child: Column(
                            children: [
                              Text(
                                'Condition',
                                style: Theme.of(context)
                                    .textTheme
                                    .labelSmall
                                    ?.copyWith(
                                      color: Colors.pinkAccent,
                                    ),
                              ),
                              Animate(
                                target: (cubitState.displayObjectErrors &&
                                        enterValueState ==
                                            CreateToyEnterValueState.age)
                                    ? 1
                                    : 0,
                                effects: const [
                                  ShakeEffect(),
                                ],
                                onComplete: (v) {
                                  context
                                      .read<CreateToyCubit>()
                                      .hideObjectErrors();
                                },
                                child: Text(
                                  toyCondition != null
                                      ? '$toyCondition'
                                      : 'Not Selected',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineMedium,
                                ),
                              ),
                            ],
                          ),
                        ),
                    ],
                  ),
                ),
                SharedGap.gap128,
              ],
            ),
          )
        : const SizedBox.shrink();
  }
}
