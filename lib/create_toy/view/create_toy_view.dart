import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_constants/shared_constants.dart';
import 'package:shared_widgets/shared_widgets.dart';

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
                  children: const [
                    ToyCreateSelectedImagesDisplayer(),
                    SharedGap.gap12,
                    Row(
                      children: [
                        SharedGap.gap12,
                        Expanded(child: CreateToyNameDisplayer()),
                      ],
                    ),
                    SharedGap.gap12,
                    ToyCreateDescriptionDisplayer(),
                    SharedGap.gap64,
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

class ToyCreateDescriptionDisplayer extends StatelessWidget {
  const ToyCreateDescriptionDisplayer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final toyDescription = context.select(
      (CreateToyCubit bloc) => bloc.state.toyDescription.value,
    );
    final contextTheme = Theme.of(context);
    return Padding(
      padding: SharedPaddings.horizontal20,
      child: Text(
        toyDescription,
        style: contextTheme.textTheme.bodyLarge?.copyWith(
          color: contextTheme.colorScheme.onBackground.withOpacity(0.6),
        ),
      ),
    );
  }
}
