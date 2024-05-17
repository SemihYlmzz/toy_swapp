import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart' hide State;
import 'package:go_router/go_router.dart';
import 'package:shared_constants/shared_constants.dart';
import 'package:toy_swapp/app/app.dart';
import 'package:toy_swapp_client/toy_swapp_client.dart';

import '../bloc/support_toy_acceptance_bloc.dart';

class AcceptableToyCard extends StatelessWidget {
  const AcceptableToyCard({
    required this.toy,
    super.key,
  });

  final Toy toy;

  @override
  Widget build(BuildContext context) {
    var selectedImageIndex = 0;
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        AcceptableToyWaitingTimer(createdDateTime: toy.createdAt),
        Padding(
          padding: SharedPaddings.bottom12,
          child: Container(
            margin: SharedPaddings.all8,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 61, 61, 61),
              borderRadius: SharedBorderRadius.circular12,
            ),
            child: Column(
              children: [
                StatefulBuilder(
                  builder: (context, setState) {
                    return Column(
                      children: [
                        ClipRRect(
                          borderRadius: SharedBorderRadius.topLeftRight12,
                          child: Image.network(
                            toy.imageUrlList.first.url128,
                            fit: BoxFit.fill,
                            width: double.maxFinite,
                          ),
                        ),
                        ToyImagesSelector(
                          toyImagesList: left(
                            toy.imageUrlList.map((e) => e.url128).toList(),
                          ),
                          selectedImageIndex: selectedImageIndex,
                          selectedImageIndexChanged: (index) {
                            selectedImageIndex = index;
                            setState(() {});
                          },
                        ),
                      ],
                    );
                  },
                ),
                Text(toy.name, style: Theme.of(context).textTheme.titleLarge),
                Text(toy.description),
                SharedGap.gap20,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton.icon(
                      label: const Icon(Icons.close),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                      ),
                      onPressed: () {
                        showDialog<void>(
                          context: context,
                          builder: (dialogContext) => DeclineToyDialog(
                            declinedToy: toy,
                            bloc: context.read<SupportToyAcceptanceBloc>(),
                          ),
                        );
                      },
                    ),
                    ElevatedButton.icon(
                      label: const Icon(Icons.done),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                      ),
                      onPressed: () {
                        ScaffoldMessenger.of(context)
                          ..hideCurrentSnackBar()
                          ..showSnackBar(
                            const SnackBar(
                              duration: SharedDurations.ms500,
                              backgroundColor: Color.fromARGB(255, 32, 47, 91),
                              content: Text('Hold to Accept.'),
                            ),
                          );
                      },
                      onLongPress: () {
                        context.read<SupportToyAcceptanceBloc>().add(
                              SupportToyAcceptanceEvent.acceptToy(toy),
                            );
                      },
                    ),
                  ],
                ),
                SharedGap.gap8,
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class AcceptableToyWaitingTimer extends StatefulWidget {
  const AcceptableToyWaitingTimer({
    required this.createdDateTime,
    super.key,
  });

  final DateTime createdDateTime;

  @override
  State<AcceptableToyWaitingTimer> createState() =>
      _AcceptableToyWaitingTimerState();
}

class _AcceptableToyWaitingTimerState extends State<AcceptableToyWaitingTimer> {
  Timer? _timer;
  String durationToHumanLanguage(DateTime createdDateTime) {
    final duration = DateTime.now().difference(createdDateTime);
    final waitingDays = duration.inDays == 0 ? '' : '${duration.inDays}d ';
    final waitingHours =
        duration.inHours == 0 ? '' : '${duration.inHours % 24}h ';
    final waitingMinutes =
        duration.inMinutes == 0 ? '' : '${duration.inMinutes % 60}m';
    return waitingDays + waitingHours + waitingMinutes;
  }

  @override
  void initState() {
    super.initState();
    _timer ??= Timer.periodic(
      SharedDurations.s30 + SharedDurations.s30,
      (timer) => setState(() {}),
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    _timer = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 32,
      color: Colors.white12,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Text(durationToHumanLanguage(widget.createdDateTime)),
      ),
    );
  }
}

class DeclineToyDialog extends StatelessWidget {
  const DeclineToyDialog({
    required this.declinedToy,
    required this.bloc,
    super.key,
  });
  final Toy declinedToy;
  final SupportToyAcceptanceBloc bloc;

  @override
  Widget build(BuildContext context) {
    var reason = '';
    return Dialog(
      child: Container(
        padding: SharedPaddings.all12,
        width: 320,
        height: 320,
        child: Column(
          children: [
            ToySwappTextField(
              minLines: 1,
              maxLines: 7,
              maxLength: 300,
              labelText: 'Enter a Reason',
              onChanged: (value) => reason = value,
            ),
            ElevatedButton(
              onPressed: () {
                if (context.canPop()) {
                  context.pop();
                  bloc.add(
                    SupportToyAcceptanceEvent.declineToy(
                      toy: declinedToy,
                      reason: reason,
                    ),
                  );
                }
              },
              child: const Text('Send'),
            ),
          ],
        ),
      ),
    );
  }
}
