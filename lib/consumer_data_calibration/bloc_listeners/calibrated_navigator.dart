import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toy_swapp/toys/toys.dart';
// import '../../errors/errors.dart';
import '../consumer_data_calibration.dart';

extension ConsumerDataCalibrationCalibratedNavigator
    on ConsumerDataCalibrationBlocListeners {
  BlocListener<ConsumerDataCalibrationBloc, ConsumerDataCalibrationState>
      calibratedNavigator() {
    return BlocListener(
      listener: (context, state) {
        final currentAuthEmail = state.currentAuth.email;
        final currentConsumerEmail = state.successUpdatedConsumerEmail;
        if (currentConsumerEmail == null) {
          return;
        }
        if (currentAuthEmail != currentConsumerEmail) {
          return;
        }
        ToysGoRoute.instance.go(context);
      },
    );
  }
}
