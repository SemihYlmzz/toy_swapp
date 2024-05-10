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
                          displayToyGender: isGenderDisplayable,
                          displayToyCondition: isConditionDisplayable,
                          isShakeToyAge: state.displayObjectErrors &&
                              state.enterValueState ==
                                  CreateToyEnterValueState.age,
                          isShakeToyGender: state.displayObjectErrors &&
                              state.enterValueState ==
                                  CreateToyEnterValueState.gender,
                          isShakeToyCondition: state.displayObjectErrors &&
                              state.enterValueState ==
                                  CreateToyEnterValueState.condition,
                          onShakeComplete: () {
                            context.read<CreateToyCubit>().hideObjectErrors();
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CreateToyValueUpdater(
                    onChanged: _scrollBottom,
                  ),
                  SharedGap.gap4,
                  SizedBox(
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: CreateToyBackButton(
                            onPressed: _scrollBottom,
                          ),
                        ),
                        Expanded(
                          child: CreateToyContinueButton(
                            onPressed: _scrollBottom,
                          ),
                        ),
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
        _scrollBottom();
      },
    );
  }

  void _scrollBottom() {
    if (_scrollController.hasClients) {
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: SharedDurations.ms370,
        curve: Curves.easeIn,
      );
    }
  }
}
