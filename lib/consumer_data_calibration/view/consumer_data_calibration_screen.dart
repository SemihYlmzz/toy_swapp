import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../consumer_data_calibration.dart';

class ConsumerDataCalibrationScreen extends StatelessWidget {
  const ConsumerDataCalibrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final listeners = ConsumerDataCalibrationBlocListeners();

    return BlocProvider(
      create: (context) => ConsumerDataCalibrationBloc(
        authRepository: context.read(),
        consumerRepository: context.read(),
        remoteDatabase: context.read(),
      )..add(const ConsumerDataCalibrationEvent.updateConsumerEmail()),
      child: MultiBlocListener(
        listeners: [
          listeners.calibratedNavigator(),
        ],
        child: const ConsumerDataCalibrationView(),
      ),
    );
  }
}
