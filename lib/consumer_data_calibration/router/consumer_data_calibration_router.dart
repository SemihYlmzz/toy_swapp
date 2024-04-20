import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../consumer_data_calibration.dart';

class ConsumerDataCalibrationRouter {
  factory ConsumerDataCalibrationRouter() {
    return instance;
  }
  ConsumerDataCalibrationRouter._();
  static final ConsumerDataCalibrationRouter instance =
      ConsumerDataCalibrationRouter._();

  static const String _path = '/consumer_data_calibration';
  static const String _name = 'consumer_data_calibration';

  String get path => _path;
  String get name => _name;

  GoRoute get route => GoRoute(
        path: _path,
        name: _name,
        // parentNavigatorKey: RouterMixin.parentNavigatorKey,
        pageBuilder: (context, state) => const NoTransitionPage(
          child: ConsumerDataCalibrationScreen(),
        ),
      );
  void go(BuildContext context) {
    GoRouter.of(context).goNamed(_name);
  }

  void push(BuildContext context) {
    FocusManager.instance.primaryFocus?.unfocus();
    GoRouter.of(context).pushNamed(_name);
  }
}
