import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:shared_constants/shared_constants.dart';
import 'package:toy_repository/toy_repository.dart';

import '../../app.dart';

class ToyDetailsDisplayer extends StatelessWidget {
  const ToyDetailsDisplayer({
    required this.toyAge,
    required this.toyGender,
    required this.toyCondition,
    this.displayToyAge = true,
    this.displayToyGender = true,
    this.displayToyCondition = true,
    this.isShakeToyAge = false,
    this.isShakeToyGender = false,
    this.isShakeToyCondition = false,
    this.onShakeComplete,
    super.key,
  });
  final ToyAge? toyAge;
  final ToyGender? toyGender;
  final ToyCondition? toyCondition;
  final bool displayToyAge;
  final bool displayToyGender;
  final bool displayToyCondition;
  final bool isShakeToyAge;
  final bool isShakeToyGender;
  final bool isShakeToyCondition;
  final VoidCallback? onShakeComplete;
  @override
  Widget build(BuildContext context) {
    final isAllHidden =
        !displayToyAge && !displayToyGender && !displayToyCondition;
    return !isAllHidden
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
                            target: isShakeToyAge ? 1 : 0,
                            effects: const [
                              ShakeEffect(),
                            ],
                            onComplete: (v) {
                              onShakeComplete?.call();
                            },
                            child: Text(
                              switch (toyAge) {
                                ToyAge.zero => '0',
                                ToyAge.one => '1',
                                ToyAge.two => '2',
                                ToyAge.three => '3',
                                ToyAge.four => '4',
                                ToyAge.five => '5',
                                ToyAge.six => '6',
                                _ => 'Not Selected',
                              },
                              style: Theme.of(context).textTheme.headlineMedium,
                            ),
                          ),
                        ],
                      ),
                      if (displayToyGender)
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
                                target: isShakeToyGender ? 1 : 0,
                                effects: const [
                                  ShakeEffect(),
                                ],
                                onComplete: (v) {
                                  onShakeComplete?.call();
                                },
                                child: Text(
                                  switch (toyGender) {
                                    ToyGender.boy => 'Boys',
                                    ToyGender.girl => 'Girls',
                                    ToyGender.unisex => 'Both',
                                    _ => 'Not Selected'
                                  },
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineMedium,
                                ),
                              ),
                            ],
                          ),
                        ),
                      if (displayToyCondition)
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
                                target: isShakeToyCondition ? 1 : 0,
                                effects: const [
                                  ShakeEffect(),
                                ],
                                onComplete: (v) {
                                  onShakeComplete?.call();
                                },
                                child: Text(
                                  switch (toyCondition) {
                                    ToyCondition.brandNew => 'New',
                                    ToyCondition.good => 'Good',
                                    ToyCondition.normal => 'Normal',
                                    ToyCondition.bad => 'Bad',
                                    ToyCondition.broken => 'Broken',
                                    _ => 'Not Selected'
                                  },
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
                SharedGap.gap32,
              ],
            ),
          )
        : const SizedBox.shrink();
  }
}
