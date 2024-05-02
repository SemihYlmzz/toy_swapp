import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_constants/shared_constants.dart';
import 'package:shared_widgets/shared_widgets.dart';

import '../../app/app.dart';
import '../create_toy.dart';

class CreateToyView extends StatefulWidget {
  const CreateToyView({super.key});

  @override
  State<CreateToyView> createState() => _CreateToyViewState();
}

class _CreateToyViewState extends State<CreateToyView>
    with SingleTickerProviderStateMixin {
  late ScrollController _scrollController;
  Timer? _timer;
  bool isKeyboardOpen = false;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      isKeyboardOpen: (value) {
        if (!value) {
          _timer?.cancel();
          return;
        }
        _timer = _scrollBottomPeriodically();
      },
      safeArea: true,
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: BaseColumn(
                  scrollController: _scrollController,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ToyCreateSelectedImagesDisplayer(),
                    SharedGap.gap12,
                    Builder(
                      builder: (context) {
                        final toyName = context.select(
                          (CreateToyCubit bloc) => bloc.state.toyName,
                        );
                        return ToyNameDisplayer(toyName: toyName.value);
                      },
                    ),
                    SharedGap.gap12,
                    Builder(
                      builder: (context) {
                        final toyDescription = context.select(
                          (CreateToyCubit bloc) => bloc.state.toyDescription,
                        );
                        return ToyDescriptionDisplayer(
                          toyDescription: toyDescription.value,
                        );
                      },
                    ),
                    SharedGap.gap32,
                    BlocBuilder<CreateToyCubit, CreateToyCubitState>(
                      builder: (context, state) {
                        final isAgeDisplayable = state.enterValueState !=
                                CreateToyEnterValueState.name &&
                            state.enterValueState !=
                                CreateToyEnterValueState.description;
                        final isGenderDisplayable = isAgeDisplayable &&
                            state.enterValueState !=
                                CreateToyEnterValueState.age;

                        final isConditionDisplayable = isGenderDisplayable &&
                            state.enterValueState !=
                                CreateToyEnterValueState.gender;

                        return ToyDetailsDisplayer(
                          toyAge: state.toyAge,
                          toyCondition: state.toyCondition,
                          toyGender: state.toyGender,
                          displayToyAge: state.enterValueState ==
                              CreateToyEnterValueState.age,
                          isShakeToyAge: isAgeDisplayable,
                          displayToyGender: isGenderDisplayable,
                          displayToyCondition: isConditionDisplayable,
                          isShakeToyCondition: state.displayObjectErrors &&
                              state.enterValueState ==
                                  CreateToyEnterValueState.condition,
                          isShakeToyGender: state.displayObjectErrors &&
                              state.enterValueState ==
                                  CreateToyEnterValueState.gender,
                          onShakeComplete: () {
                            context.read<CreateToyCubit>().hideObjectErrors();
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
              const Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CreateToyValueUpdater(),
                  SharedGap.gap4,
                  SizedBox(
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(child: CreateToyBackButton()),
                        Expanded(child: CreateToyContinueButton()),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Align(
            alignment: Alignment.topLeft,
            child: CreateToyPopButton(),
          ),
        ],
      ),
    );
  }

  Timer _scrollBottomPeriodically() {
    return Timer.periodic(
      SharedDurations.s1,
      (timer) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: SharedDurations.ms370,
          curve: Curves.easeIn,
        );
      },
    );
  }
}
